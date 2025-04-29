//
//  Vector3.swift
//  mcap_test
//
//  Created by Yaoyu Hu on 12/4/23.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("geometry_msgs", "Vector3")
public class ROS2Vector3: ROS2Message {
    public var x: Float64
    public var y: Float64
    public var z: Float64
    
    public init () {
        self.x = 0
        self.y = 0
        self.z = 0
    }
}
