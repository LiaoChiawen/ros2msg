//
//  File.swift
//  
//
//  Created by Kabir Kedia on 7/3/2024.
//

import Foundation // Need by Data.
import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("straps_msgs", "Audio")
public class ROS2Audio: ROS2Message {
    public var header: ROS2Header
    public var data: Array<Float>
    
    public init() {
        self.header = ROS2Header()
        self.data = Array<Float>()
    }
}
