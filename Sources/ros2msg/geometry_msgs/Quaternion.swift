//
//  Quaternion.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("geometry_msgs", "Quaternion")
public class ROS2Quaternion: ROS2Message {
    public var x: Float64 = 0
    public var y: Float64 = 0
    public var z: Float64 = 0
    public var w: Float64 = 1
    
    public init () { }
}
