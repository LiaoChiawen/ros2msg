//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 3/21/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

//Vitals message
@ROS2MsgType("straps_msgs", "DARPAStatus")
public class ROS2DARPAStatus: ROS2Message {
    
    public var stamp: ROS2Time
    
    // According to the latest IDC in 202403.
    public var clock: Float32
    public var team: String
    public var user: String
    public var severe_hemorrhage_remaining: Int32
    public var respiratory_distress_remaining: Int32
    public var heart_rate_remaining: Int32
    public var respiratory_rate_remaining: Int32
    public var trauma_head_remaining: Int32
    public var trauma_torso_remaining: Int32
    public var trauma_lower_ext_remaining: Int32
    public var trauma_upper_ext_remaining: Int32
    public var alertness_ocular_remaining: Int32
    public var alertness_verbal_remaining: Int32
    public var alertness_motor_remaining: Int32
    
    public init () {
        self.stamp = ROS2Time()
        self.clock = 0.0
        self.team = ""
        self.user = ""
        self.severe_hemorrhage_remaining = 0
        self.respiratory_distress_remaining = 0
        self.heart_rate_remaining = 0
        self.respiratory_rate_remaining = 0
        self.trauma_head_remaining = 0
        self.trauma_torso_remaining = 0
        self.trauma_lower_ext_remaining = 0
        self.trauma_upper_ext_remaining = 0
        self.alertness_ocular_remaining = 0
        self.alertness_verbal_remaining = 0
        self.alertness_motor_remaining = 0
    }
}
