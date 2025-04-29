//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/7/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

//public final class ROS2DescHeader: ROS2MessageDescriptionBase {
//    public required init(){
//        super.init(messageName: "std_msgs/msg/Header",
//                   descriptionFile: "ros2humble/std_msgs/msg/Header")
//    }
//}

@ROS2MsgType("std_msgs", "String")
public class ROS2String: ROS2Message {
    public var data: String
    
    public init() {
        self.data = ""
    }
}
