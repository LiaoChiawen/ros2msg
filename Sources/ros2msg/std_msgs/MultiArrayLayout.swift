//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("std_msgs", "MultiArrayLayout")
public class ROS2MultiArrayLayout: ROS2Message {
    public var dim: Array<ROS2MultiArrayDimension>
    public var data_offset: UInt32
    
    public init() {
        self.dim = Array<ROS2MultiArrayDimension>()
        self.data_offset = 0
    }
}

