import React from 'react'
import logo from '../assets/building_icon.png'
import './Header.css'

export default function Header() {
  return (
    <div className='nav-outer'>
      <nav className="navbar navbar-expand-sm navbar-light bg-light">
        <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="navbar-header">
          <a className="navbar-brand" href="/">
            <img src={logo} width="30" height="30" alt="" />BoardPackager
          </a>
        </div>
        <div className="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
            <li className="nav-item active">
              <a className="nav-link" href="/">Home</a>
            </li>
          </ul>
        </div>
      </nav>
    </div>
  )
}
