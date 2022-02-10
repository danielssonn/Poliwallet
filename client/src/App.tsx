import React, { useState } from "react";
import logo from "./logo.svg";
import "./App.scss";

import { Fluence } from "@fluencelabs/fluence";
import { krasnodar } from "@fluencelabs/fluence-network-environment";
import { registerClientPeer, fetchOpenSea, fetchRarible } from "./_aqua/getting-started";

const relayNodes = [krasnodar[0], krasnodar[1], krasnodar[2]];

function App() {
  const [isConnected, setIsConnected] = useState<boolean>(false);
  const [helloMessage, setHelloMessage] = useState<string | null>(null);

  const [peerIdInput, setPeerIdInput] = useState<string>("");
  const [relayPeerIdInput, setRelayPeerIdInput] = useState<string>("");

  const connect = async (relayPeerId: string) => {
    try {
      await Fluence.start({ connectTo: relayPeerId });
      setIsConnected(true);
      // Register handler for this call in aqua:
      // HelloPeer.hello(%init_peer_id%)
      registerClientPeer({
        hello: (from) => {
          setHelloMessage("Hello from: \n" + from);
          return "Hello back to you, \n" + from;
        }
      });
    } catch (err) {
      console.log("Peer initialization failed", err);
    }
  };

  const fetchOpenSeaBtnOnClick = async () => {
    if (!isConnected) {
      return;
    }

    // Using aqua is as easy as calling a javascript funсtion
    const res = await fetchOpenSea(peerIdInput, relayPeerIdInput, 1, 5, { ttl: 99999 });
    console.log("FINALLY! ", res)
    setHelloMessage(res);
  };


  const fetchRaribleBtnOnClick = async () => {
    if (!isConnected) {
      return;
    }

    // Using aqua is as easy as calling a javascript funсtion
    const res = await fetchRarible(peerIdInput, relayPeerIdInput, "", 5, { ttl: 99999 });
    console.log("FINALLY! ", res)
    setHelloMessage(res);
  };


  return (
    <div className="App">



      <div className="content">
        {isConnected ? (
          <>
            <h1>Connected</h1>
            <table>
              <tbody>
                <tr>
                  <td className="bold">Peer id:</td>
                  <td className="mono">{Fluence.getStatus().peerId!}</td>
                  <td>
                    <button
                      className="btn-clipboard"
                      onClick={() => copyToClipboard(Fluence.getStatus().peerId!)}
                    >
                      <i className="gg-clipboard"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td className="bold">Relay peer id:</td>
                  <td className="mono">{Fluence.getStatus().relayPeerId!}</td>
                  <td>
                    <button
                      className="btn-clipboard"
                      onClick={() => copyToClipboard(Fluence.getStatus().relayPeerId!)}
                    >
                      <i className="gg-clipboard"></i>
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>

            <div>
              <div className="row">
                <label className="label bold">Target peer id</label>
                <input
                  className="input"
                  type="text"
                  onChange={(e) => setPeerIdInput(e.target.value)}
                  value={peerIdInput}
                />
              </div>
              <div className="row">
                <label className="label bold">Target relay</label>
                <input
                  className="input"
                  type="text"
                  onChange={(e) => setRelayPeerIdInput(e.target.value)}
                  value={relayPeerIdInput}
                />
              </div>
              <div className="row">
                <button className="btn btn-hello" onClick={fetchOpenSeaBtnOnClick}>
                  Fetch OpenSea NFTs
                </button>
              </div>
              <div className="row">
                <button className="btn btn-hello" onClick={fetchRaribleBtnOnClick}>
                  Fetch Rarible NFTs
                </button>
              </div>
            </div>
          </>
        ) : (
          <>
            <h1>Intro 3: Computing on the network</h1>
            <h2>Pick a relay</h2>
            <ul>
              {relayNodes.map((x) => (
                <li key={x.peerId}>
                  <span className="mono">{x.peerId}</span>
                  <button className="btn" onClick={() => connect(x.multiaddr)}>
                    Connect
                  </button>
                </li>
              ))}
            </ul>
          </>
        )}

        {helloMessage && (
          <>
            <h2>Message</h2>
            <div> {helloMessage} </div>
          </>
        )}
      </div>
    </div>
  );
}

const copyToClipboard = (text: string) => {
  navigator.clipboard.writeText(text);
};

export default App;
