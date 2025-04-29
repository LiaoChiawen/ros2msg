//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/31/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "BodyPose2DDetection")
public class ROS2BodyPose2DDetection: ROS2Message {
    // BBox is defined in dimensionless range 0.0 - 1.0
    public var header: ROS2Header
    
    public var input_image_timestamp: ROS2Time
    
    public var bbox: ROS2BodyPose2DBBox
    public var poses: Array<ROS2BodyPose2DPose>
    
    public init () {
        self.header = ROS2Header()
        self.input_image_timestamp = ROS2Time()
        
        self.bbox = ROS2BodyPose2DBBox()
        self.poses = Array<ROS2BodyPose2DPose>()
    }
}
