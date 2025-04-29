//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 3/14/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

public enum InjuryType: UInt8 {
    case TRAUMA_HEAD = 4
    case TRAUMA_TORSO = 5
    case TRAUMA_LOWER_EXT = 6
    case TRAUMA_UPPER_EXT = 7
    case ALERTNESS_OCULAR = 8
    case ALERTNESS_VERBAL = 9
    case ALERTNESS_MOTOR = 10
    
    public var value: UInt8 {
        switch self {
        case .TRAUMA_HEAD:
            return 4
        case .TRAUMA_TORSO:
            return 5
        case .TRAUMA_LOWER_EXT:
            return 6
        case .TRAUMA_UPPER_EXT:
            return 7
        case .ALERTNESS_OCULAR:
            return 8
        case .ALERTNESS_VERBAL:
            return 9
        case .ALERTNESS_MOTOR:
            return 10
        }
    }
}

public enum TraumaValue: UInt8 {
    case TRAUMA_NORMAL = 0
    case TRAUMA_WOUND = 1
    case TRAUMA_AMPUTATION = 2
    
    public var value: UInt8 {
        switch self {
        case .TRAUMA_NORMAL:
            return 0
        case .TRAUMA_WOUND:
            return 1
        case .TRAUMA_AMPUTATION:
            return 2
        }
    }
}

public enum OcularAlertnessValue: UInt8 {
    case OCULAR_OPEN         = 0
    case OCULAR_CLOSED       = 1
    case OCULAR_NOT_TESTABLE = 2
    
    public var value: UInt8 {
        switch self {
        case .OCULAR_OPEN:
            return 0
        case .OCULAR_CLOSED:
            return 1
        case .OCULAR_NOT_TESTABLE:
            return 2
        }
    }
}

public enum VerbalMotorAlertnessValue: UInt8 {
    case ALERTNESS_NORMAL       = 0
    case ALERTNESS_ABNORMAL     = 1
    case ALERTNESS_ABSENT       = 2
    case ALERTNESS_NOT_TESTABLE = 3
    
    public var value: UInt8 {
        switch self {
        case .ALERTNESS_NORMAL:
            return 0
        case .ALERTNESS_ABNORMAL:
            return 1
        case .ALERTNESS_ABSENT:
            return 2
        case .ALERTNESS_NOT_TESTABLE:
            return 3
        }
    }
}

//Vitals message
@ROS2MsgType("straps_msgs", "Injury")
public class ROS2Injury: ROS2Message {
    
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
        self.type = InjuryType.TRAUMA_HEAD.value
        self.value = TraumaValue.TRAUMA_NORMAL.value
        self.confidence = 0.0
    }
}
