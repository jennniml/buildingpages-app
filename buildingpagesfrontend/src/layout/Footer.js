import React from 'react'
import './Footer.css'

export default function Footer({ management }) {

  return (
    <div className="footer fixed-bottom">
      <hr></hr>
      <div className="row justify-content-sm-center">
        <div className="col-sm-auto">
          {management.name}
        </div>
        <div className="col-sm-auto">
        {management.street}
        </div>
        <div className="col-sm-auto">
        {management.area}
        </div>
        <div className="col-sm-auto">
        {management.phone}
        </div>
        <div className="col-sm-auto">
        {management.url}
        </div>
      </div>
    </div>
  )
}
