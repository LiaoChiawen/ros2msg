//
//  File.swift
//  
//
//  Created by Sebastian Scherer on 12/22/23.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

public enum VitalType: UInt8 {
    case HEART_RATE = 2
    case RESPIRATION_RATE = 3
    
    public var value: UInt8 {
        switch self {
        case .HEART_RATE:
            return 2
        case .RESPIRATION_RATE:
            return 3
        }
    }
}

//Vitals message
@ROS2MsgType("straps_msgs", "Vitals")
public class ROS2Vitals: ROS2Message {
    
    // According to the latest IDC in 202403.
    public var stamp: ROS2Time
    public var casualty_id: Int32
    public var system: String
    public var type: UInt8
    public var value: UInt32
    public var time_ago: UInt32
    public var confidence: Float32
    
    public init () {
        self.stamp = ROS2Time()
        self.casualty_id = -1
        self.system = "CHIRON"
        self.type = VitalType.HEART_RATE.value
        self.value = 0
        self.time_ago = 0
        self.confidence = 0.0
    }
}
