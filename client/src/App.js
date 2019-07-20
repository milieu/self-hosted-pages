import React from 'react';
import axios from 'axios';
import logo from './logo.svg';
import './App.css';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      coolPhrase: ''
    };

    this.updatePhrase = this.updatePhrase.bind(this);
  }

  updatePhrase() {
    axios.get('http://54.162.135.120:8080/')
      .then(response => {
        this.setState({coolPhrase: response})
      });
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <button onClick={this.updatePhrase}>Click Me for a cool phrase</button>
          <p>{this.state.coolPhrase}</p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </header>
      </div>
    );
  }
}

export default App;
