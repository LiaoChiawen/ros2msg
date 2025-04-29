//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

enum ROS2StateConstants: UInt8 {
    case PRIMARY_STATE_UNKNOWN = 0
    case PRIMARY_STATE_UNCONFIGURED = 1
    case PRIMARY_STATE_INACTIVE = 2
    case PRIMARY_STATE_ACTIVE = 3
    case PRIMARY_STATE_FINALIZED = 4
    case TRANSITION_STATE_CONFIGURING = 10
    case TRANSITION_STATE_CLEANINGUP = 11
    case TRANSITION_STATE_SHUTTINGDOWN = 12
    case TRANSITION_STATE_ACTIVATING = 13
    case TRANSITION_STATE_DEACTIVATING = 14
    case TRANSITION_STATE_ERRORPROCESSING = 15
    
    var value: UInt8 {
        switch self {
        case .PRIMARY_STATE_UNKNOWN:
            return 0
        case .PRIMARY_STATE_UNCONFIGURED:
            return 1
        case .PRIMARY_STATE_INACTIVE:
            return 2
        case .PRIMARY_STATE_ACTIVE:
            return 3
        case .PRIMARY_STATE_FINALIZED:
            return 4
        case .TRANSITION_STATE_CONFIGURING:
            return 10
        case .TRANSITION_STATE_CLEANINGUP:
            return 11
        case .TRANSITION_STATE_SHUTTINGDOWN:
            return 12
        case .TRANSITION_STATE_ACTIVATING:
            return 13
        case .TRANSITION_STATE_DEACTIVATING:
            return 14
        case .TRANSITION_STATE_ERRORPROCESSING:
            return 15
        }
    }
}

@ROS2MsgType("lifecycle_msgs", "State")
public class ROS2State: ROS2Message {
    public var id: UInt8
    public var label: String
    
    public init() {
        self.id = ROS2StateConstants.PRIMARY_STATE_UNKNOWN.value
        self.label = ""
    }
}
