import logo from './logo.svg';
import './App.css';
import { Header } from './components/header';
import { SideNavbar } from './components/sideNavbar';
import { Content } from './components/content';

function App() {
  return (
    <div class='main'>
      <Header></Header>
      <div class='container'>
        <SideNavbar></SideNavbar>
        <Content></Content>
      </div>
    </div>
  );
}

export default App;
