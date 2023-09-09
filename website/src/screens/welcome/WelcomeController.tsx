import React, { Component } from "react";
import WelcomeView from "./WelcomeView";
import { AuthClient } from "@dfinity/auth-client";


interface WelcomeControllerState {
    user: string;
    authenticated: boolean;
    error: string | null; 
}

class WelcomeController extends Component<{}, WelcomeControllerState> {
    constructor(props: {}) {
        super(props);
        this.state = {
            user: "",
            authenticated: false,
            error: null,
        };
    }

    async componentDidMount() {
        try {
            const authClient = await AuthClient.create();

            if (await authClient.isAuthenticated()) {
                const identity = await authClient.getIdentity();
                this.setState({
                    user: identity.getPrincipal().toText(),
                    authenticated: true,
                });
            }
        } catch (error) {
            this.setState({ error: "Authentication failed." });
        }
    }

    handleSuccess = async () => {
        this.setState({
            authenticated: true,
        });
    };

    handleError = (err: any) => {
        this.setState({ error: err.message || "An error occurred." });
    };

    handleLoginClick = async () => {
        try {
            const authClient = await AuthClient.create();
            await authClient.login();
        } catch (error) {
            this.handleError(error);
        }
    };

    handleLogoutClick = async () => {
        try {
            const authClient = await AuthClient.create();
            await authClient.logout();
            this.setState({
                authenticated: false,
                user: "",
                error: null,
            });
        } catch (error) {
            this.handleError(error);
        }
    };

    render() {
        return (
            <div>
                <WelcomeView
                    user={this.state.user}
                    authenticated={this.state.authenticated}
                    onLoginClick={this.handleLoginClick}
                    onLogoutClick={this.handleLogoutClick}
                    onSuccess={this.handleSuccess}
                    onError={this.handleError}
                />
                {this.state.error && <p>Error: {this.state.error}</p>}
            </div>
        );
    }
}

export default WelcomeController;
