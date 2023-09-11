import React, { Fragment } from "react";
import { Link } from 'react-router-dom';
import '../../assets/main.css'
import { useNavigate } from 'react-router-dom';

function HireInsurange({user}) {

    const navigate = useNavigate();

    const logout = () => {
        navigate('/')
    };

    return (
        <Fragment>
            <div class="background">
            {/** Navbar */}
            <div class="navbar">
                <p class="lightSmall">Welcome, {user}</p>
                <div class="gap">
                    <button class="button">
                        <Link to="/profile">Perfil</Link>
                    </button>
                    <button class="button" onClick={logout}>
                        <Link to="/profile">Logout</Link>
                    </button>
                </div>
            </div>
            {/** End navbar */}
            <div class="padding">
                <button class="buttonback">
                    <Link to="/home">Voltar</Link>
                </button>
            </div>
            <div class="containerhero">
                {/** Start Forms */}
                <div class="containerforms">
                    {/** Type Insegurance */}
                    <div class="input-container">
                        <p>Type of Insurance</p>
                        <input class="custom-input"
                            placeholder="Travel"
                            disabled={true}
                            defaultValue="Travel"
                        />
                    </div>
                    {/** End Type Insegurance */}

                    {/** Flight Number */}
                    <div class="input-container">
                        <p>Flight Number</p>
                        <input class="custom-input"
                            placeholder="Example: 3030dDSA@1"
                        />
                    </div>
                    {/** End Flight Number */}

                    {/* Start Card */}
                    <div class="card">
                        <p>Payment Method</p>
                        <p>PIX</p>
                    </div>
                    {/* End Start Card */}

                    {/* Start Card */}
                    <div class="card">
                        <h2>$1,400.81</h2>
                    </div>
                    {/* End Start Card */}

                    {/* Start Button */}
                    <button class="buttoncontract">
                        <p>Verify Travel</p>
                    </button>
                    {/* End Start Button */}
                    {/** End Forms */}
                </div>
                <div class="line" />
                <div class="containerdata">
                    <h2>Data Travel</h2>
                    <div class="rowdata">
                        <h3>Departure Date</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <div class="rowdata">
                        <h3>Departure Time</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <div class="rowdata">
                        <h3>Arrival Date</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <div class="rowdata">
                        <h3>Arrival Time</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <div class="rowdata">
                        <h3>Airport</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <div class="rowdata">
                        <h3>City</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <div class="rowdata">
                        <h3>Country</h3>
                        <p>Enter the flight code and check to appear</p>
                    </div>

                    <button class="buttoncontractorigin">
                        <p>Close contract</p>
                    </button>
                </div>
            </div>
            </div>
        </Fragment>
    )
}

export default HireInsurange
