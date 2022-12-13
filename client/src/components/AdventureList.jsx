import React, { Component } from 'react';
import { get } from 'axios';
import { Link } from 'react-router-dom';

class AdventureList extends Component {
  constructor() {
    super();
    this.state = { articles: [] };
  }

  componentDidMount() {
    get('http://localhost:3001/api/articles.json')
      .then(response => { 
        this.setState({adventures: response.data});
      })
      .catch(error => console.log('error', error));
  }

  render() {
    return (
      <div>
        {this.state.adventures.map((adventure) => {
          return(
            <div key={article.id}>
              <h2><Link to={`/adventures/${adventure.id}`}>{adventure.title}</Link>
              <img src= {adventure.image_url} alt ={adventure.id}></img>
              </h2>{adventure.slug}<hr/>
            </div>
          )     
        })}
        <Link to="/articles/new" className="btn btn-outline-primary">Create Article</Link>  
      </div>
    )
  }
}

export default AdventureList;