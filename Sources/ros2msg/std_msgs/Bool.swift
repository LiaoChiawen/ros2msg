//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/25/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("std_msgs", "Bool")
public class ROS2Bool: ROS2Message {
    public var data: Bool
    
    public init() {
        self.data = false
    }
}
