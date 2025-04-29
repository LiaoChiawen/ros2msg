//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("std_msgs", "UInt8MultiArray")
public class ROS2UInt8MultiArray: ROS2Message {
    public var layout: ROS2MultiArrayLayout
    public var data: Data
    
    public init() {
        self.layout = ROS2MultiArrayLayout()
        self.data = Data()
    }
}
