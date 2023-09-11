import React, { useState } from "react";
import Home from "./screens/Home.jsx";
import Welcome from "./screens/Welcome.jsx";
import { HashRouter as Router, Route, Routes } from 'react-router-dom';
import HireInsurange from "./screens/Hire.jsx";
import Profile from "./screens/Profile.jsx";
import InsuranceContracteds from "./screens/InsuranceContracteds.jsx";
import InsurangeClosed from './screens/InsurangeClosed.jsx';

function App() {

    const [user, setUser] = useState(null)

    return (
        <Router>
            <Routes>
                <Route exact path="/" element={<Welcome user={user} setUser={setUser}/>} />
                <Route path="/home" element={<Home user={user}/>} />
                <Route path="/hire" element={<HireInsurange user={user}/>} />
                <Route path="/profile" element={<Profile user={user}/>} />
                <Route path="/ihire" element={<InsuranceContracteds user={user}/>} />
                <Route path="/closedhire" element={<InsurangeClosed user={user}/>} />
            </Routes>
        </Router>
    );
}

export default App;