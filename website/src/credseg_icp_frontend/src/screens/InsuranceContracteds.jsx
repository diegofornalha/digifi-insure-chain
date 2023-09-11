import React, { Fragment } from "react";
import { Link } from 'react-router-dom';
import '../../assets/main.css'
import { useNavigate } from 'react-router-dom';

function InsuranceContracteds({user}) {

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
                <div class="padding">
                    <button class="buttonback">
                        <Link to="/home"><p>Voltar</p></Link>
                    </button>
                </div>
                <h2 class="hiretext">
                    Insurance Contracteds
                </h2>

                <div class="containeritem">
                    <div class="lineitem" />
                    <div>
                        <h1 class="h1item">Travel Insurance - United States</h1>
                        <p>320.00 ICP Warranty</p>
                    </div>
                    <button class="buttonitem">
                        <p>Details</p>
                    </button>
                </div>
                {/** End Header */}
            </div>
        </Fragment>
    )
}

export default InsuranceContracteds

