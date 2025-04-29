//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 4/18/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "BodyPose3D")
public class ROS2BodyPose3D: ROS2Message {
    // BBox is defined in dimensionless range 0.0 - 1.0
    public var header: ROS2Header
    
    public var target_frame_id: String
    
    public var pose: ROS2Pose
    
    public init () {
        self.header = ROS2Header()
        self.target_frame_id = "camera"
        self.pose = ROS2Pose()
    }
}
