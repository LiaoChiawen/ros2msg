//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 4/11/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

//Vitals message
@ROS2MsgType("straps_msgs", "GarminHeartrate")
public class ROS2GarminHeartrate: ROS2Message {
    
    // According to the latest IDC in 202403.
    public var stamp: ROS2Time
    public var casualty_id: Int32
    public var device_id: UInt32
    public var beat_count: UInt8
    public var beat_time: Float32
    public var previous_heart_beat_time: Float32
    public var heart_rate: UInt32
    
    public init () {
        self.stamp = ROS2Time()
        self.casualty_id = -1
        self.device_id = 0
        self.beat_count = 0 // This is an invalid value.
        self.beat_time = 0.0
        self.previous_heart_beat_time = 0.0
        self.heart_rate = 0
    }
}
