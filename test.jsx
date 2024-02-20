const express = require('express');
const axios = require('axios');
const qs = require('qs');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;

// modified end point 
app.get('/client/login', (req, res) => {
  res.send('<a href="/auth">Login with LINE</a>');
});

// Redirect to LINE login page
app.get('/auth', (req, res) => {
  const params = {
    response_type: 'code',
    client_id: process.env.CHANNEL_ID,
    redirect_uri: process.env.CALLBACK_URL,
    state: 'random_state_string', // optional
    scope: 'profile openid email', // specify required scopes
  };
  const queryParams = qs.stringify(params);
  res.redirect(`https://access.line.me/oauth2/v2.1/authorize?${queryParams}`);
});

// Callback URL to exchange code for access token
app.get('/auth/callback', async (req, res) => {
  const { code } = req.query;

  // Exchange code for access token
  const tokenParams = {
    grant_type: 'authorization_code',
    client_id: process.env.CHANNEL_ID,
    client_secret: process.env.CHANNEL_SECRET,
    redirect_uri: process.env.CALLBACK_URL,
    code,
  };

  try {
    const tokenResponse = await axios.post('https://api.line.me/oauth2/v2.1/token', qs.stringify(tokenParams), {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    });

    const { access_token } = tokenResponse.data;

    // Use the access token to make requests to the LINE API
    // For example, fetch user profile data
    const profileResponse = await axios.get('https://api.line.me/v2/profile', {
      headers: {
        Authorization: `Bearer ${access_token}`,
      },
    });
    

    const userProfile = profileResponse.data;
    res.json(userProfile);
  } catch (error) {
    if (error.response && error.response.data) {
      console.error('Error:', error.response.data);
    } else {
      console.error('Error:', error.message || error);
    }
    res.status(500).send('Internal Server Error');
  }
});



app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
