//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 2/20/24.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "CmdSetClockRequest")
public class ROS2CmdSetClockRequest: ROS2Cmd {
    public var index: Int32 // Required by ROS2Cmd.
    public var ts: Float64
    
    public init () {
        self.index = -1
        self.ts = 0.0
    }
}
