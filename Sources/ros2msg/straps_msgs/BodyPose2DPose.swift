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
@ROS2MsgType("straps_msgs", "BodyPose2DPose")
public class ROS2BodyPose2DPose: ROS2Message {
    // BBox is defined in dimensionless range 0.0 - 1.0
    public var x: Float32
    public var y: Float32
    public var score: Float32
    
    public init () {
        self.x = 0.0
        self.y = 0.0
        
        self.score = 0.0
    }
}
