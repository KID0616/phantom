// Auto-generated. Do not edit!

// (in-package phantom_omni.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class OmniFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
      this.position = null;
      this.torque = null;
      this.thetas = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('thetas')) {
        this.thetas = initObj.thetas
      }
      else {
        this.thetas = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OmniFeedback
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.torque, buffer, bufferOffset);
    // Serialize message field [thetas]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.thetas, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OmniFeedback
    let len;
    let data = new OmniFeedback(null);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [thetas]
    data.thetas = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'phantom_omni/OmniFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fff792fe66e9b3da7728a73d600f71b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is the force as estimated from the applied torques as well as the current
    # end effector position of the robot arm                           
    geometry_msgs/Vector3  force                                                                  
    geometry_msgs/Vector3  position  
    geometry_msgs/Vector3  torque
    geometry_msgs/Vector3  thetas
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OmniFeedback(null);
    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Vector3()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.torque !== undefined) {
      resolved.torque = geometry_msgs.msg.Vector3.Resolve(msg.torque)
    }
    else {
      resolved.torque = new geometry_msgs.msg.Vector3()
    }

    if (msg.thetas !== undefined) {
      resolved.thetas = geometry_msgs.msg.Vector3.Resolve(msg.thetas)
    }
    else {
      resolved.thetas = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = OmniFeedback;
