//
//  Point.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

//public final class ROS2DescPoint: ROS2MessageDescriptionBase {
//    public required init(){
//        super.init(messageName: "geometry_msgs/msg/Point",
//                   descriptionFile: "ros2humble/geometry_msgs/msg/Point")
//    }
//}

@ROS2MsgType("geometry_msgs", "Point")
public class ROS2Point: ROS2Message {
//    public typealias DescriptionType = ROS2DescPoint
    
    public var x: Float64
    public var y: Float64
    public var z: Float64
    
    public init () {
        self.x = 0
        self.y = 0
        self.z = 0
    }
}
