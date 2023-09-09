import NFIDEmbed from './components/AuthComponent';

function App() {
  const host = 'https://nfid.one';

  const handleSuccess = (identity: any) => {   
      console.log(identity);
      console.log(identity.getPublicKey());
  };

  const handleError = (error?: string) => {
    console.log(error);
  };

  return (
    <div className="App">
      <h1>Login com ICP</h1>
      <NFIDEmbed host={host} onSuccess={handleSuccess} onError={handleError} />
    </div>
  );
}

export default App;