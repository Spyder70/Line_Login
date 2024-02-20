import mainLayout from "./layouts/admin/mainLayout";
import NewClub from "./Views/admin/NewClub";
import Login from "../src/Views/admin/Login";
import { Clubs } from "./Views/admin/Clubs";
import ClubsView from './Views/admin/ClubsView';
import {BrowserRouter as Router, Routes, Route} from "react-router-dom";
import Membership from './Views/client/Membership';
import Events from './Views/client/Events';
import Register from './Views/client/Register';
import Membercard from './Views/client/Membercard';
import Eventform from './Views/client/Eventform';
import Line_Login from './Views/client/Line_Login';

function App() {
  return (
    <Router>
    <Routes>
      <Route path="/" Component={Login}/>
      <Route path="/home" Component={mainLayout}>
        <Route index path="/home/new" Component={NewClub}/>
        <Route path="/home/clubs" Component={Clubs} />
        <Route path="/home/clubs/:id" Component={ClubsView} />
      </Route>
      <Route path="/Membership" Component={Membership} />
      <Route path="/Events" Component={Events} />
      <Route path="Registration" Component={Register} />
      <Route path="Membercard" Component={Membercard} />
      <Route path="/:id" Component={Eventform} />
      <Route path="/client/login" Component={Line_Login} />
     
    </Routes>
    </Router>
  )
}

export default App
