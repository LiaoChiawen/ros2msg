//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("sensor_msgs", "RegionOfInterest")
public class ROS2RegionOfInterest: ROS2Message {
    public var x_offset: UInt32
    public var y_offset: UInt32
    public var height: UInt32
    public var width: UInt32
    public var do_rectify: Bool
    
    public init() {
        self.x_offset = 0
        self.y_offset = 0
        self.height = 0
        self.width = 0
        self.do_rectify = false
    }
}
