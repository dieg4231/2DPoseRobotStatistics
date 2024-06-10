
"use strict";

let SetTargetAngle = require('./SetTargetAngle.js')
let SetTargetDistance = require('./SetTargetDistance.js')
let initDetector = require('./initDetector.js')
let calculateDistance = require('./calculateDistance.js')

module.exports = {
  SetTargetAngle: SetTargetAngle,
  SetTargetDistance: SetTargetDistance,
  initDetector: initDetector,
  calculateDistance: calculateDistance,
};
