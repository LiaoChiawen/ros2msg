//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/25/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("std_msgs", "Int32")
public class ROS2Int32: ROS2Message {
    public var data: Int32
    
    public init() {
        self.data = 0
    }
}
