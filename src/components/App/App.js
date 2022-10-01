import { HashRouter as Router, Route, Redirect } from 'react-router-dom';
import './App.css';
import Nav from '../Nav/Nav';
import MovieList from '../MovieList/MovieList';
import MovieDetails from '../MovieDetails/MovieDetails';
import MovieContribute from '../MovieContribute/MovieContribute';

function App() {
  return (
    <div className="App">
      <Router>
        <Nav />
        <Redirect from="/" to="/movies" />       
        <Route path="/movies" exact>
          <MovieList />
        </Route>
        <Route path="/movies/:id" exact>
          <MovieDetails />
        </Route>
        <Route path="/contribute" exact>
          <MovieContribute />
        </Route>
      </Router>
    </div>
  );
}

export default App;
