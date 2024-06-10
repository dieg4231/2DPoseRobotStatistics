// Auto-generated. Do not edit!

// (in-package pose_robot_statistics2d.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class initDetectorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type initDetectorRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type initDetectorRequest
    let len;
    let data = new initDetectorRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_robot_statistics2d/initDetectorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new initDetectorRequest(null);
    return resolved;
    }
};

class initDetectorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isDetected = null;
    }
    else {
      if (initObj.hasOwnProperty('isDetected')) {
        this.isDetected = initObj.isDetected
      }
      else {
        this.isDetected = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type initDetectorResponse
    // Serialize message field [isDetected]
    bufferOffset = _serializer.bool(obj.isDetected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type initDetectorResponse
    let len;
    let data = new initDetectorResponse(null);
    // Deserialize message field [isDetected]
    data.isDetected = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_robot_statistics2d/initDetectorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acc79b946844b63a8a389c71b5098c7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isDetected
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new initDetectorResponse(null);
    if (msg.isDetected !== undefined) {
      resolved.isDetected = msg.isDetected;
    }
    else {
      resolved.isDetected = false
    }

    return resolved;
    }
};

module.exports = {
  Request: initDetectorRequest,
  Response: initDetectorResponse,
  md5sum() { return 'acc79b946844b63a8a389c71b5098c7a'; },
  datatype() { return 'pose_robot_statistics2d/initDetector'; }
};
