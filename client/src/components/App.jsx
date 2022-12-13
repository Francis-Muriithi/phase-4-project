import React, { Component } from 'react';
import {BrowserRouter as Router, Route, NavLink, Switch} from 'react-router-dom';

import '../stylesheets/App.css';
import Home from './Home';
import AdventureList from './AdventureList';
import AdventureInfo from './AdventureInfo';
import AdventureAdd from './AdventureAdd ';
import AdventureEdit from './AdventureEdit';

class App extends Component {
  render() {
    return (
      <div className="App">     
        <Router>
          <div className="container">
            <Navigation />
            <Main />
          </div>
        </Router>
      </div>
    );
  }
}

const Navigation = () => (
  <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
    <ul className="navbar-nav mr-auto">
      <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/">Home</NavLink></li>
      <li className="nav-item"><NavLink exact className="nav-link" activeClassName="active" to="/articles">Articles</NavLink></li>
    </ul>
  </nav>
);

const Main = () => (
  <Switch>
    <Route exact path="/" component={Home} />
    <Route exact path="/articles" component={AdventureList} />
    <Route exact path="/articles/new" component={AdventureAdd} />
    <Route exact path="/articles/:id" component={AdventureInfo} />
    <Route exact path="/articles/:id/edit" component={AdventureEdit} />
  </Switch>
);

export default App;
