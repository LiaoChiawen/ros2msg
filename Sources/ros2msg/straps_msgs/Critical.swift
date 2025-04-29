//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 3/14/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

public enum CriticalType: UInt8 {
    case SEVERE_HEMORRHAGE = 0
    case RESPIRATORY_DISTRESS = 1
    
    public var value: UInt8 {
        switch self {
        case .SEVERE_HEMORRHAGE:
            return 0
        case .RESPIRATORY_DISTRESS:
            return 1
        }
    }
}

public enum CriticalValue: UInt8 {
    case ABSENT = 0
    case PRESENT = 1
    
    public var value: UInt8 {
        switch self {
        case .ABSENT:
            return 0
        case .PRESENT:
            return 1
        }
    }
}

//Vitals message
@ROS2MsgType("straps_msgs", "Critical")
public class ROS2Critical: ROS2Message {
    
    // According to the latest IDC in 202403.
    public var stamp: ROS2Time
    public var casualty_id: Int32
    public var system: String
    public var type: UInt8
    public var value: UInt8
    public var confidence: Float32
    
    public init () {
        self.stamp = ROS2Time()
        self.casualty_id = -1
        self.system = "CHIRON"
        self.type = CriticalType.SEVERE_HEMORRHAGE.value
        self.value = CriticalValue.ABSENT.value
        self.confidence = 0.0
    }
}
