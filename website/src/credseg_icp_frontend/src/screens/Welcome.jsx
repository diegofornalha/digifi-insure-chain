import React, { useState, Fragment, useRef } from "react";
import { IFrameAuthClient } from "@nfid/iframe-auth";
import { useNavigate } from 'react-router-dom';

import '../../assets/main.css'

function Welcome({ user, setUser }) {
    const containerRef = useRef();
    const host = "https://nfid.one";
    const navigate = useNavigate();

    const onSuccess = (identity) => {
        const userID = identity.getPrincipal().toString();

        if (userID) {
            const firstLetters = userID.substring(0, 5);
            const lastTwo = userID.substring(userID.length - 2);

            const modifiedUser = firstLetters + "..." + lastTwo;

            setUser(modifiedUser);
        }

        navigate('/home');
    };

    const onError = (err) => {
        console.log(err)
    };

    const auth = () => {
        if (containerRef.current) {
            IFrameAuthClient({
                iframeElement: containerRef.current,
                provider: host,
                onSuccess,
                onError,
            });
        }
    };

    return (
        <Fragment>
            <div class="bodyhome">
                {/* Navbar */}
                <nav class="navhome">
                    <div class="logo" />
                    <button class="buttonlog" onClick={auth}>
                        <p>Login</p>
                    </button>
                    <iframe
                        ref={containerRef}
                        style={{ display: 'none' }}
                    />
                </nav>
                {/* Navbar */}

                {/* Header */}
                <div id="containerheader">
                    <div id="containerfirstheader">
                        <p id="textheader">Making Insurange Easy, Affordable, And Inclusive</p>
                        <button id="buttonheader">Watch Pitch</button>
                    </div>
                    <div id="imgbanner" />
                </div>
                {/* End Header */}

                {/* Post */}
                <div class="postcontainer">
                    <div id="imgcell" />
                    <div class="gapcustom">
                        <p class="posttext">Our Platform</p>
                        <p class="postsubtitle">Watch the demo video of our platform to stay on top of it!</p>
                        <button class="buttoncontract" onClick={auth}>
                            <p class="lightSmall">Start Now</p>
                        </button>
                    </div>
                </div>
                {/* End Post */}

                {/* Post */}
                <div class="postcontainer">
                    <div class="gapcustom">
                        <p class="posttext">Version Mobile</p>
                        <p class="postsubtitle">We plan to further expand our platform by launching a mobile app</p>
                        <button class="buttoncontract">
                            <p class="lightSmall">Learn More</p>
                        </button>
                    </div>
                    <div id="imgcell2" />
                </div>
                {/* End Post */}
            </div>
        </Fragment>
    );
}

export default Welcome;