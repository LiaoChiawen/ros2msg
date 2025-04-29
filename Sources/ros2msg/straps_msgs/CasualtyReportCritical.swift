//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/28/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

public enum ROS2CasualtyReportCriticalStatus: UInt8 {
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

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "CasualtyReportCritical")
public class ROS2CasualtyReportCritical: ROS2Message {
    public var casualty_identification_number: UInt16
    
    public var severe_hemorrhage: UInt8
    public var respiratory_distress: UInt8
    
    public var heart_rate: Float32
    public var respiratory_rate: Float32
    
    public init () {
        self.casualty_identification_number = 0
        
        self.severe_hemorrhage = ROS2CasualtyReportCriticalStatus.ABSENT.value
        self.respiratory_distress = ROS2CasualtyReportCriticalStatus.ABSENT.value
        
        self.heart_rate = 0.0
        self.respiratory_rate = 0.0
    }
}
