//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/28/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

// TODO: Make sure this reflects the .msg.
public enum ROS2CasualtyReportExtraTraumaStatus: UInt8 {
    case NORMAL = 0
    case WOUND = 1
    case AMPUTATION = 2

    public var value: UInt8 {
        switch self {
        case .NORMAL:
            return 0
        case .WOUND:
            return 1
        case .AMPUTATION:
            return 2
        }
    }
}

// TODO: Make sure this reflects the .msg.
public enum ROS2CasualtyReportExtraAlertnessStatus: UInt8 {
    case NT = 0
    case OPEN = 1
    case CLOSED = 2
    case NORMAL = 3
    case ABNORMAL = 4
    case ABSENT = 5
    
    public var value: UInt8 {
        switch self {
        case .NT:
            return 0
        case .OPEN:
            return 1
        case .CLOSED:
            return 2
        case .NORMAL:
            return 3
        case .ABNORMAL:
            return 4
        case .ABSENT:
            return 5
        }
    }
}

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "CasualtyReportExtra")
public class ROS2CasualtyReportExtra: ROS2Message {
    public var casualty_identification_number: UInt16
    
    public var head: UInt8
    public var torso: UInt8
    public var upper_extremities: UInt8
    public var lower_extremities: UInt8
    
    public var eye_lids: UInt8
    public var verbal: UInt8
    public var motor: UInt8
    
    public init () {
        self.casualty_identification_number = 0
        
        self.head = ROS2CasualtyReportExtraTraumaStatus.NORMAL.value
        self.torso = ROS2CasualtyReportExtraTraumaStatus.NORMAL.value
        self.upper_extremities = ROS2CasualtyReportExtraTraumaStatus.NORMAL.value
        self.lower_extremities = ROS2CasualtyReportExtraTraumaStatus.NORMAL.value
        
        self.eye_lids = ROS2CasualtyReportExtraAlertnessStatus.NT.value
        self.verbal = ROS2CasualtyReportExtraAlertnessStatus.NT.value
        self.motor = ROS2CasualtyReportExtraAlertnessStatus.NT.value
    }
}
