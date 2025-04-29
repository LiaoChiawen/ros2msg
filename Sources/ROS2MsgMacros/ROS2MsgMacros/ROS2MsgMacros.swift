//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 12/30/23.
//

import ROS2MsgProtocol

//@attached(extension, conformances: ROS2Message, names: named(DescriptionType))
@attached(member, names: arbitrary)
public macro ROS2MsgType(_ ros2Folder: String, _ ros2MessageName: String) = #externalMacro(module: "ROS2MsgMacrosImp", type: "ROS2MsgTypeMacro")
