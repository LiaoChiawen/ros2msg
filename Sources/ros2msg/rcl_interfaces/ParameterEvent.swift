//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("rcl_interfaces", "ParameterEvent")
public class ROS2ParameterEvent: ROS2Message {
    public var stamp: ROS2Time
    public var node: String
    public var new_parameters: Array<ROS2Parameter>
    public var changed_parameters: Array<ROS2Parameter>
    public var deleted_parameters: Array<ROS2Parameter>

    public init() {
        self.stamp = ROS2Time()
        self.node = ""
        self.new_parameters = Array<ROS2Parameter>()
        self.changed_parameters = Array<ROS2Parameter>()
        self.deleted_parameters = Array<ROS2Parameter>()
    }
}

