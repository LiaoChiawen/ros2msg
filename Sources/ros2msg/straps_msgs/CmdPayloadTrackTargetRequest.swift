//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 5/31/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

public enum PayloadTrackType: UInt8 {
    case NONE  = 0
    case HIP   = 1
    case NOSE  = 2
    
    public var value: UInt8 {
        switch self {
        case .NONE:
            return 0
        case .HIP:
            return 1
        case .NOSE:
            return 2
        }
    }
}

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "CmdPayloadTrackTargetRequest")
public class ROS2CmdPayloadTrackTargetRequest: ROS2Cmd {
    public var index: Int32 // Required by ROS2Cmd.
    public var target: UInt8
    
    public init () {
        self.index = -1
        self.target = PayloadTrackType.NONE.value
    }
}
