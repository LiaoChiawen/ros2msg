//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("rcl_interfaces", "Parameter")
public class ROS2Parameter: ROS2Message {
    public var name: String
    public var value: ROS2ParameterValue

    public init() {
        self.name = ""
        self.value = ROS2ParameterValue()
    }
}
