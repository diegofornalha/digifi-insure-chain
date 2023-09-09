import React, { useEffect, useRef } from "react";
import { IFrameAuthClient } from "@nfid/iframe-auth";

interface NFIDEmbedProps {
    host: string;
    onSuccess: (identity: any) => void;
    onError: (error?: string) => void;
}

const NFIDEmbed: React.FC<NFIDEmbedProps> = ({
    host,
    onSuccess,
    onError,
}) => {
    const containerRef = useRef<HTMLDivElement | null>(null);

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
        <div
            ref={containerRef}
        >
            <button onClick={() => auth()}>
                Create Wallet
            </button>
        </div>
    );
};

export default NFIDEmbed;
