//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 2/1/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "AprilTag")
public class ROS2AprilTag: ROS2Message {
    // BBox is defined in dimensionless range 0.0 - 1.0
    public var header: ROS2Header
    public var id: Int32
    public var system: String
    
    public init () {
        self.header = ROS2Header()
        self.id = -1
        self.system = "R0"
    }
}
