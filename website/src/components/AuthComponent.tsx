import React, { useEffect, useRef } from "react";
import { IFrameAuthClient } from "@nfid/iframe-auth";
import logoid from '../assets/logoid.png'


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
            <div style={{paddingBottom: '20px'}}>
            <button style={{
                alignItems: "center",
                width: '300px',
                height: '60px',
                backgroundColor: '#6E21D1'
            }}    onClick={() => auth()}>
                <img src={logoid} alt="Logo" style={{
                    height: '40px',
                    width: '80px'
                }}/>
            </button>
            </div>
        </div>
    );
};

export default NFIDEmbed;
