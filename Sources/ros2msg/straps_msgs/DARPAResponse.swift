//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 3/21/24.
//

import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

//Vitals message
@ROS2MsgType("straps_msgs", "DARPAResponse")
public class ROS2DARPAResponse: ROS2Message {
    
    // According to the latest IDC in 202403.
    public var run: String
    public var team: String
    public var user: String
    public var system: String
    public var clock: Float32
    public var report_id: String
    public var report_timestamp: String
    public var reports_remaining: Int32
    public var report_status: String
    public var casualty_id: Int32
    public var type: String
    public var value: Int32
    public var time_ago: Int32
    
    public init () {
        self.run = ""
        self.team = ""
        self.user = ""
        self.system = ""
        self.clock = 0.0
        self.report_id = ""
        self.report_timestamp = ""
        self.reports_remaining = 0
        self.report_status = ""
        self.casualty_id = 0
        self.type = ""
        self.value = 0
        self.time_ago = 0
    }
}
