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
@ROS2MsgType("straps_msgs", "BodyPose2DBBox")
public class ROS2BodyPose2DBBox: ROS2Message {
    // BBox is defined in dimensionless range 0.0 - 1.0
    public var left: Float32
    public var top: Float32
    public var right: Float32
    public var bottom: Float32
    public var score: Float32
    
    public init () {
        self.left = 0.0
        self.top = 0.0
        self.right = 0.0
        self.bottom = 0.0
        
        self.score = 0.0
    }
}
