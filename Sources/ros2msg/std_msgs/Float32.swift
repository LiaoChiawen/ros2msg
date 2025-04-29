//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("std_msgs", "Float32")
public class ROS2Float32: ROS2Message {
    public var data: Float32
    
    public init() {
        self.data = 0.0
    }
}
