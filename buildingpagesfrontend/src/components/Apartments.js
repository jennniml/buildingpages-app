import React from 'react'
import './Card.css'
import { useLocation } from 'react-router-dom';
import mapimage from '../assets/map.jpg'
import Policies from './Policies';
import Footer from '../layout/Footer';

export default function Apartments() {

  const location = useLocation();
  const { bldg } = location.state;
  console.log(location)
  const { management } = location.state;

  return (
    <>
      <img className="bldg-image" src={bldg.image} alt="" />

      <div className='card-outer'>
        {bldg.description}
        <hr></hr>
        <h2>Apartments for Rent</h2>

        {bldg.apartments.length > 0 ? (
          <div>
            <p>Please note that apartment availability is always changing. Some of these apartments may no longer be available, while others may have been vacated recently.</p>
            <div className="row">
              {bldg.apartments.map((apartment) => (
                <div className='col-sm-6 card-atom'>
                  <div className="card">
                    <img className="card-img-top" src={apartment.image} alt="Apartment" />
                    <div className="card-body">
                      <h3 className="card-title">{apartment.unitNum}</h3>
                      <p className="card-text"><strong>${apartment.price}</strong> MONTHLY</p>
                      <p className="card-text">{apartment.bed} BED / {apartment.bath} BATH</p>
                      <a type="button" className="btn btn-dark btn-sm" to={`/apartments/${bldg.id}`}>
                        Schedule a Visit
                      </a>
                    </div>
                  </div>
                </div>

              ))}
            </div>
          </div>
        ) : (
          <>
            <div>
              <p>No apartments currently available for rent.</p>
            </div>
          </>
        )}
        
        <Policies/>

        <img src={mapimage} alt="..." class="rounded" className='mapimage'></img>
      </div>
      
      <Footer 
        management={management}
      />
    </>

  )
}
