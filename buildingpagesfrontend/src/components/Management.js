import React, { useEffect, useState } from 'react'
import './Card.css'
import { Link } from 'react-router-dom'

export default function Management() {

  const [managers, setManagement] = useState([]);

  const loadManagement = async () => {
    const response = await fetch("http://localhost:8080/management");
    const data = await response.json();
    setManagement(data);
    console.log(data);
  }

  useEffect(() => {
    loadManagement();
  }, [])

  return (
    <>
      <div className="jumbotron jumbotron-fluid">
        <div className="container">
          <h1 className="display-2 jumbo-text">Welcome</h1>
          <p className="lead jumbo-text">View a list of property managers and their building and available rentals.</p>
        </div>
      </div>

      <div className='card-outer'>
        <h2>Property Managers</h2>
        <div className="row">
          <ul class="list-group">
            {
              managers.map((manager) => (
                <li className="list-group-item">
                  <Link to={`/buildings/${manager.id}`} state={{ mnmt: manager }}>
                    <h5>{manager.name}</h5>
                  </Link>
                </li>
              ))
            }
          </ul>
        </div>
      </div>
    </>

  )
}
