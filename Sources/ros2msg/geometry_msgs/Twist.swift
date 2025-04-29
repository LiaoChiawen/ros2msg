//
//  Twist.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("geometry_msgs", "Twist")
public class ROS2Twist: ROS2Message {
    public var linear: ROS2Vector3
    public var angular: ROS2Vector3
    
    public init() {
        self.linear = ROS2Vector3()
        self.angular = ROS2Vector3()
    }
}
