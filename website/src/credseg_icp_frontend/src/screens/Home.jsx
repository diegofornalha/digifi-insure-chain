import React, { Fragment } from "react";
import { Link } from 'react-router-dom';
import '../../assets/main.css'
import { useNavigate } from 'react-router-dom';

function Home( { user }) {

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
                {/** Header */}
                <div class="containerheader">
                    {/** Items */}

                    <Link to="/hire" class="itemselect">
                        <div class="circle">
                            <div id="imgcustom1" />
                        </div>
                        <p>Hire Insurange</p>
                    </Link>

                    <Link to="/ihire" class="itemselect">
                        <div class="circle">
                            <div id="imgcustom2" />
                        </div>
                        <p>Insurance Hired</p>
                    </Link>

                    <Link to="/closedhire" class="itemselect">
                        <div class="circle">
                            <div id="imgcustom3" />
                        </div>
                        <p>Insurance Closed</p>
                    </Link>

                    <Link to="/home" class="itemselect">
                        <div class="circle">
                            <div id="imgcustom4" />
                        </div>
                        <p>In development</p>
                    </Link>

                    <Link to="/home" class="itemselect">
                        <div class="circle">
                            <div id="imgcustom4" />
                        </div>
                        <p>In development</p>
                    </Link>
                    

                    {/** End Items */}
                </div>

                <div id="containerbanner">
                    <div id="imgmoney"/>
                    <div id="containertextsbanner">
                        <h2 id="h2banner">Withdraw Leftovers from Insurance</h2>
                        <p id="pbanner">Withdraw what's left of your insurance!</p>
                        <button id="buttonbanner">Withdraw reward</button>
                    </div>
                </div>
                {/** End Header */}
            </div>
        </Fragment>
    )
}

export default Home

