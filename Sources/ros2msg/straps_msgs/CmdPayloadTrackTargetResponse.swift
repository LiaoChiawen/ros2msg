//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 5/31/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "CmdPayloadTrackTargetResponse")
public class ROS2CmdPayloadTrackTargetResponse: ROS2Cmd {
    public var index: Int32  // Required by ROS2Cmd.
    public var status: UInt8
    
    public init () {
        self.index = -1
        self.status = 0
    }
}
