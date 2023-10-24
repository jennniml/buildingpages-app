import React from 'react'
import './Policies.css'

export default function Policies() {
  return (
    <div>
      <hr></hr>
      <h3>Building Policies</h3>

      <div className="row">
        <div className="col-sm-6 policies-title">
          <h5 className="text-white bg-dark">General Policies</h5>
          <div className="row policies">
            <div className="col-sm-6">
              <h6>Pets Allowed</h6>
              <p><i>Only owners may have dogs</i></p>
            </div>
            <div className="col-md-6">
              <h6>In-unit Washer/Dryer</h6>
              <p><i>Allowed</i></p>
            </div>
            <div className="col-md-6">
              <h6>Subletting Allowed</h6>
              <p><i>Shareholders can sublet immediately; 30-day minimum</i></p>
            </div>
            <div className="col-md-6">
              <h6>Smoking</h6>
              <p><i>Not Allowed</i></p>
            </div>
            <div className="col-md-6">
              <h6>Parents Buying for Employed Children</h6>
              <p><i>Allowed</i></p>
            </div>
            <div className="col-md-6">
              <h6>Parents Buying for Student Children</h6>
              <p><i>Allowed</i></p>
            </div>
          </div>

        </div>
        <div className="col-sm-6 policies-title">
          <h5 className="text-white bg-dark">Additional Policies</h5>
          <div className="row policies">
            <h6>:: Storage available for fee</h6>
            <h6>:: Applications reviewed by Building Councel</h6>
          </div>
        </div>
      </div>

    </div>
  )
}
