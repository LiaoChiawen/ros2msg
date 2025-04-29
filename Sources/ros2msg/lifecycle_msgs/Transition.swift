//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

enum ROS2TransitionConstants: UInt8 {
    case TRANSITION_CREATE = 0
    case TRANSITION_CONFIGURE = 1
    case TRANSITION_CLEANUP = 2
    case TRANSITION_ACTIVATE = 3
    case TRANSITION_DEACTIVATE = 4
    case TRANSITION_UNCONFIGURED_SHUTDOWN  = 5
    case TRANSITION_INACTIVE_SHUTDOWN = 6
    case TRANSITION_ACTIVE_SHUTDOWN = 7
    case TRANSITION_DESTROY = 8
    
    case TRANSITION_ON_CONFIGURE_SUCCESS = 10
    case TRANSITION_ON_CONFIGURE_FAILURE = 11
    case TRANSITION_ON_CONFIGURE_ERROR = 12
    
    case TRANSITION_ON_CLEANUP_SUCCESS = 20
    case TRANSITION_ON_CLEANUP_FAILURE = 21
    case TRANSITION_ON_CLEANUP_ERROR = 22
    
    case TRANSITION_ON_ACTIVATE_SUCCESS = 30
    case TRANSITION_ON_ACTIVATE_FAILURE = 31
    case TRANSITION_ON_ACTIVATE_ERROR = 32
    
    case TRANSITION_ON_DEACTIVATE_SUCCESS = 40
    case TRANSITION_ON_DEACTIVATE_FAILURE = 41
    case TRANSITION_ON_DEACTIVATE_ERROR = 42
    
    case TRANSITION_ON_SHUTDOWN_SUCCESS = 50
    case TRANSITION_ON_SHUTDOWN_FAILURE = 51
    case TRANSITION_ON_SHUTDOWN_ERROR = 52
    
    case TRANSITION_ON_ERROR_SUCCESS = 60
    case TRANSITION_ON_ERROR_FAILURE = 61
    case TRANSITION_ON_ERROR_ERROR = 62
    
    case TRANSITION_CALLBACK_SUCCESS = 97
    case TRANSITION_CALLBACK_FAILURE = 98
    case TRANSITION_CALLBACK_ERROR = 99
    
    var value: UInt8 {
        switch self {
        case .TRANSITION_CREATE:
            return 0
        case .TRANSITION_CONFIGURE:
            return 1
        case .TRANSITION_CLEANUP:
            return 2
        case .TRANSITION_ACTIVATE:
            return 3
        case .TRANSITION_DEACTIVATE:
            return 4
        case .TRANSITION_UNCONFIGURED_SHUTDOWN :
            return 5
        case .TRANSITION_INACTIVE_SHUTDOWN:
            return 6
        case .TRANSITION_ACTIVE_SHUTDOWN:
            return 7
        case .TRANSITION_DESTROY:
            return 8
        case .TRANSITION_ON_CONFIGURE_SUCCESS:
            return 10
        case .TRANSITION_ON_CONFIGURE_FAILURE:
            return 11
        case .TRANSITION_ON_CONFIGURE_ERROR:
            return 12
        case .TRANSITION_ON_CLEANUP_SUCCESS:
            return 20
        case .TRANSITION_ON_CLEANUP_FAILURE:
            return 21
        case .TRANSITION_ON_CLEANUP_ERROR:
            return 22
        case .TRANSITION_ON_ACTIVATE_SUCCESS:
            return 30
        case .TRANSITION_ON_ACTIVATE_FAILURE:
            return 31
        case .TRANSITION_ON_ACTIVATE_ERROR:
            return 32
        case .TRANSITION_ON_DEACTIVATE_SUCCESS:
            return 40
        case .TRANSITION_ON_DEACTIVATE_FAILURE:
            return 41
        case .TRANSITION_ON_DEACTIVATE_ERROR:
            return 42
        case .TRANSITION_ON_SHUTDOWN_SUCCESS:
            return 50
        case .TRANSITION_ON_SHUTDOWN_FAILURE:
            return 51
        case .TRANSITION_ON_SHUTDOWN_ERROR:
            return 52
        case .TRANSITION_ON_ERROR_SUCCESS:
            return 60
        case .TRANSITION_ON_ERROR_FAILURE:
            return 61
        case .TRANSITION_ON_ERROR_ERROR:
            return 62
        case .TRANSITION_CALLBACK_SUCCESS:
            return 97
        case .TRANSITION_CALLBACK_FAILURE:
            return 98
        case .TRANSITION_CALLBACK_ERROR:
            return 99
        }
    }
}

@ROS2MsgType("lifecycle_msgs", "Transition")
public class ROS2Transition: ROS2Message {
    public var id: UInt8
    public var label: String
    
    public init() {
        self.id = ROS2TransitionConstants.TRANSITION_CREATE.value
        self.label = ""
    }
}
