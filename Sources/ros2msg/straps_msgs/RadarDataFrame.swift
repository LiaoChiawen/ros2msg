//
//  File.swift
//  
//
//  Created by Sebastian Scherer on 12/22/23.
//

import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "RadarDataFrame")
public class ROS2RadarDataFrame: ROS2Message {
    public var frame_counter: UInt16
    public var frame_identifier: UInt16
    public var frame_length : UInt16
    public var tx_id: UInt8
    public var rx_id: UInt8
    public var data_source: UInt8
    public var gain: UInt8
    public var measurement_cnt: UInt8
    public var slowtime_cnt: UInt16
    public var update_rate: UInt16
    public var data_type: UInt8
    public var variable_type: UInt8
    public var no_elements: UInt16
    public var data: Data
    
    public init () {
        self.frame_counter = 0
        self.frame_identifier = 0
        self.frame_length = 0
        self.tx_id = 0
        self.rx_id = 0
        self.data_source = 0
        self.gain = 0
        self.measurement_cnt = 0
        self.slowtime_cnt = 0
        self.update_rate = 0
        self.data_type = 0
        self.variable_type = 0
        self.no_elements = 0
        self.data = Data()
    }
}
