import './App.css';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css'
import Header from './layout/Header';
import Apartments from './components/Apartments';
import Buildings from './components/Buildings';
import Management from './components/Management';
import { Route, Routes } from 'react-router-dom';

function App() {
  return (
    <>
      <Header />
      <Routes>
        <Route path='/' element={<Management />} />
        <Route exact path="/buildings/:id" element={<Buildings />} />
        <Route exact path="/apartments/:id" element={<Apartments />} />
      </Routes>
    </>
  );
}

export default App;
