import React, { useState, useEffect } from "react";
import "./Welcome.css";
import logo from "../../assets/logo.png";
import banner from "../../assets/banner.png";
import NFIDEmbed from "../../components/AuthComponent";
import ReactModal from "react-modal";

interface WelcomeViewProps {
    user: string;
    authenticated: boolean;
    onLoginClick: () => Promise<void>;
    onLogoutClick: () => Promise<void>;
    onSuccess: () => Promise<void>;
    onError: (err: any) => void;
}

const WelcomeView: React.FC<WelcomeViewProps> = (props) => {
    const [showModal, setShowModal] = useState(false);

    const toggleModal = () => {
        setShowModal(!showModal);
    };

    const customStyles = {
        content: {
            height: "400px",
            width: "330px",
            top: "50%",
            left: "50%",
            right: "auto",
            bottom: "auto",
            transform: "translate(-50%, -50%)",
        },
    };

    return (
        <div>
            {props.authenticated ? (
                <div>
                    <p>User {props.user}</p>
                    <button onClick={props.onLogoutClick}>Logout</button>
                    <button onClick={toggleModal}>Open Modal</button>
                </div>
            ) : (
                <div>
                    {/* Modal */}
                    <ReactModal
                        isOpen={showModal}
                        onRequestClose={toggleModal}
                        style={customStyles}
                        shouldCloseOnOverlayClick={true}
                    >
                        <button onClick={toggleModal}>Voltar</button>
                        <div
                            style={{
                                display: "flex",
                                flexDirection: "column",
                                justifyContent: "space-between",
                                height: "90%",
                            }}
                        >
                            <div
                                style={{
                                    display: "flex",
                                    flexDirection: "column",
                                    gap: "20px",
                                    padding: '20px'
                                }}
                            >
                                <h2 className="textmodal">Log in with your NFID.</h2>

                                <>
                                    <p className="subtitlemodal">
                                        Remembering that with this, you will create a wallet.
                                    </p>
                                    <NFIDEmbed
                                        host={"https://nfid.one"}
                                        onSuccess={props.onSuccess}
                                        onError={props.onError}
                                    />
                                </>

                            </div>
                        </div>
                    </ReactModal>
                    <div id="start" style={{ height: "100vh" }}>
                        <nav id="nav">
                            <img src={logo} id="logo" alt="Logo" />
                            <button className="button">
                                <p className="smallWhiteText" onClick={toggleModal}>
                                    Login Account
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
                            <img src={banner} id="banner" alt="Banner" />
                        </header>
                    </div>
                </div>
            )}
        </div>
    );
};

export default WelcomeView;
