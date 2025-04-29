//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 12/10/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

//public final class ROS2DescHeader: ROS2MessageDescriptionBase {
//    public required init(){
//        super.init(messageName: "std_msgs/msg/Header",
//                   descriptionFile: "ros2humble/std_msgs/msg/Header")
//    }
//}

@ROS2MsgType("std_msgs", "Header")
public class ROS2Header: ROS2Message {
//    public typealias DescriptionType = ROS2DescHeader
    
    public var stamp: ROS2Time
    public var frame_id: String
    
    public init() {
        self.stamp = ROS2Time()
        self.frame_id = "UNDEFINED_FRAME"
    }
    
}
