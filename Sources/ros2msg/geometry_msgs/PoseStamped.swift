//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 8/14/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("geometry_msgs", "PoseStamped")
public class ROS2PoseStamped: ROS2Message {
    public var header: ROS2Header
    public var pose: ROS2Pose
    
    public init() {
        self.header = ROS2Header()
        self.pose   = ROS2Pose()
    }
}
