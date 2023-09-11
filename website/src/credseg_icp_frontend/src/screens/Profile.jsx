import React, { Fragment } from "react";
import { Link } from 'react-router-dom';
import '../../assets/main.css';
import { useNavigate } from 'react-router-dom';


function Profile({user}) {

    const navigate = useNavigate();

    const logout = () => {
        navigate('/')
    };

    return (
        <Fragment>
            {/** Navbar */}
            <div class="navbar">
                <p class="lightSmall">Welcome, {user}</p>
                <button class="button" onClicp={logout()}>
                    <p>Logout</p>
                </button>
            </div>
            {/** End navbar */}
            <div class="padding">
                <button class="buttonback">
                    <Link to="/home">Voltar</Link>
                </button>
            </div>
            <div class="containerforms">

                
            {/** Type Insegurance */}
            <h2>Dados</h2>

            <div class="input-container"> 
                <p>Name Complete</p>
                <input class="custom-input"
                placeholder="Example: Pedro Junior da Silva"
                />
            </div>

            <div class="input-container"> 
                <p>Document Type</p>
                <input class="custom-input"
                placeholder="CPF"
                disabled={true}
                defaultValue="CPF"
                />
            </div>
            {/** End Type Insegurance */}

            {/** Flight Number */}
            <div class="input-container"> 
                <p>Document Number</p>
                <input class="custom-input"
                placeholder="Example: 000.000.000-00"
                />
            </div>
            {/** End Flight Number */}

            {/** Flight Number */}
            <div class="input-container"> 
                <p>E-mail</p>
                <input class="custom-input"
                placeholder="Example: bellu@creaseg.com"
                />
            </div>
            {/** End Flight Number */}

            {/** Age */}
            <div class="input-container"> 
                <p>Age</p>
                <input class="custom-input"
                placeholder="Example: 21"
                />
            </div>
            {/** End Age */}

            <button class="buttoncontract">
                <p>Update Profile</p>
            </button>
            {/* End Start Button */}
            {/** End Forms */}
            </div>
        </Fragment>
    )
}

export default Profile;
