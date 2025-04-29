//
//  Pose.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("geometry_msgs", "Pose")
public class ROS2Pose: ROS2Message {
    public var position: ROS2Point
    public var orientation: ROS2Quaternion
    
    public init() {
        self.position = ROS2Point()
        self.orientation = ROS2Quaternion()
    }
}
