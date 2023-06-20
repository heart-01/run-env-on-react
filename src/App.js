import logo from "./logo.svg";
import "./App.css";

function App() {
    return (
        <div className="App">
            <header className="App-header">
                <img src={logo} className="App-logo" alt="logo" />
                <p>
                    REACT_APP_API_ENDPOINT:{" "}
                    {window?._env_?.REACT_APP_API_ENDPOINT}
                </p>
                <p>
                    REACT_APP_SOME_ENV_1: {window?._env_?.REACT_APP_SOME_ENV_1}
                </p>
                <p>
                    REACT_APP_SOME_ENV_2: {window?._env_?.REACT_APP_SOME_ENV_2}
                </p>
            </header>
        </div>
    );
}

export default App;
