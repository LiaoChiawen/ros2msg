//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("std_msgs", "MultiArrayDimension")
public class ROS2MultiArrayDimension: ROS2Message {
    public var label: String
    public var size: UInt32
    public var stride: UInt32
    
    public init() {
        self.label = ""
        self.size = 0
        self.stride = 0
    }
}
