import React from "react";
import "./Welcome.css";
import logo from "../../assets/logo.png";
import banner from "../../assets/banner.png";
import NFIDEmbed from "../../components/AuthComponent";

interface WelcomeViewProps {
    user: string;
    authenticated: boolean;
    onLoginClick: () => Promise<void>;
    onLogoutClick: () => Promise<void>;
    onSuccess: () => Promise<void>;
    onError: (err: any) => void;
}

const WelcomeView: React.FC<WelcomeViewProps> = (props) => {
    return (
        <div>
            {props.authenticated
                ? (
                    <div>
                        <p>User ${props.user}</p>
                        <NFIDEmbed
                            host={"https://nfid.one"}
                            onSuccess={props.onSuccess}
                            onError={props.onError}
                        />
                    </div>
                )
                : (
                    <div id="start" style={{ height: "100vh" }}>
                        <nav id="nav">
                            <img src={logo} id="logo" />
                            <button className="button">
                                <p className="smallWhiteText" onClick={props.onLoginClick}>
                                    Login with ICP
                                </p>
                            </button>
                        </nav>
                        <header id="header">
                            <div id="headerchild">
                                <h2 className="mediumWhiteText">
                                    Making insurance easy, affordable, and inclusive.
                                </h2>
                                <button className="button" style={{ marginTop: 20 }}>
                                    <p className="smallWhiteText">Watch Pitch</p>
                                </button>
                            </div>
                            <img
                                src={banner}
                                id="banner"
                            />
                        </header>
                    </div>
                )}
        </div>
    );
};

export default WelcomeView;
