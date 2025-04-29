//
//  Image.swift
//  mcap_test
//
//  Created by Jiahe Xu on 12/5/23.
//

import Foundation // Need by Data.

import ROS2MsgProtocol
import ROS2MsgMacros

// ========== Original ROS2 definition. ==========
// uint32 height                # image height, that is, number of rows
// uint32 width                 # image width, that is, number of columns
//
// # The legal values for encoding are in file include/sensor_msgs/image_encodings.hpp
// # If you want to standardize a new string format, join
// # ros-users@lists.ros.org and send an email proposing a new encoding.
//
// string encoding       # Encoding of pixels -- channel meaning, ordering, size
//                       # taken from the list of strings in include/sensor_msgs/image_encodings.hpp
//
// uint8 is_bigendian    # is this data bigendian?
// uint32 step           # Full row length in bytes
// uint8[] data          # actual matrix data, size is (step * rows)
// ========== End of original ROS2 definition. ==========

//public final class ROS2DescImage: ROS2MessageDescriptionBase {
//    public required init(){
//        super.init(messageName: "sensor_msgs/msg/Image",
//                   descriptionFile: "ros2humble/sensor_msgs/msg/Image")
//    }
//}

@ROS2MsgType("sensor_msgs", "Image")
public class ROS2Image: ROS2Message {
//    public typealias DescriptionType = ROS2DescImage
    
    public var header: ROS2Header
    public var height: UInt32
    public var width: UInt32
    public var encoding: String
    public var is_bigendian: UInt8
    public var step: UInt32
    public var data: Data // todo array or list
    
    public init() {
        self.header = ROS2Header()
        self.height = 0
        self.width = 0
        self.encoding = "bgra8"
        self.is_bigendian = 0x00
        self.step = 0
        self.data = Data()
    }
}
