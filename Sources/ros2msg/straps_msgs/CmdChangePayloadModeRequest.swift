//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 4/16/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

public enum PAYLOAD_MODE: Int32 {
    case CONFIG_VIEW   = 0
    case REGULAR_VIEW  = 1
    case FACIAL_VIEW   = 2
    case INTERACT_VIEW = 3
    case SPEECH_VIEW   = 4
    
    public var value: Int32 {
        switch self {
        case .CONFIG_VIEW:
            return 0
        case .REGULAR_VIEW:
            return 1
        case .FACIAL_VIEW:
            return 2
        case .INTERACT_VIEW:
            return 3
        case .SPEECH_VIEW:
            return 4
        }
    }
}

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "CmdChangePayloadModeRequest")
public class ROS2CmdChangePayloadModeRequest: ROS2Cmd {
    public var index: Int32 // Required by ROS2Cmd.
    public var mode: Int32
    
    public init () {
        self.index = -1
        self.mode = PAYLOAD_MODE.CONFIG_VIEW.value
    }
}
