//
//  File.swift
//  
//
//  Created by Chiawen Liao on 4/6/25.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("geometry_msgs", "PoseArray")
public class ROS2PoseArray: ROS2Message {
    public var header: ROS2Header
    public var poses: [ROS2Pose]
    
    public init() {
        self.header = ROS2Header()
        self.poses = []
    }
}

