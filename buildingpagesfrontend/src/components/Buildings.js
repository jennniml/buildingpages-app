import React, { useEffect, useState } from 'react'
import './Card.css'
import Footer from '../layout/Footer';
import { Link, useLocation } from 'react-router-dom'

export default function Buildings() {

  const [buildings, setBuildings] = useState([]);

  const location = useLocation();
  const { mnmt } = location.state;

  const loadBuildings = async () => {
    const response = await fetch("http://localhost:8080/buildings");
    const data = await response.json();
    setBuildings(data);
    console.log(data);
  }

  useEffect(() => {
    loadBuildings();
  }, [])

  return (
    <>
      <div className='card-outer'>
        {
          mnmt.buildings.length > 0 ? (
            <>
              <div className="row">
                <h2>Rental Buildings</h2>
                {
                  mnmt.buildings.map((building) => (
                    <div className="col-sm-6 card-atom">
                      <div className="card">
                        <img className="card-img-top" src={building.image} alt="Building" />
                        <div className="card-body">
                          <h5 className="card-title">{building.name}</h5>
                          <p className="card-text">{building.neighborhood}</p>
                          <Link type="button" className="btn btn-dark btn-sm" to={`/apartments/${building.id}`} state={{ bldg: building, management: mnmt }}>
                            See Apartments
                          </Link>
                        </div>
                      </div>
                    </div>
                  ))
                }
              </div>
            </>
          ) : (
            <>
              <div>
                <p>No buildings currently available for rent.</p>
              </div>
            </>
          )
        }
      </div>
      <Footer 
        management={mnmt}
      />
    </>

  )
}
