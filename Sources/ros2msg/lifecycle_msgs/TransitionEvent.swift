//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/20/24.
//

import ROS2MsgProtocol
import ROS2MsgMacros

@ROS2MsgType("lifecycle_msgs", "TransitionEvent")
public class ROS2TransitionEvent: ROS2Message {
    public var timestamp: UInt64
    public var transition: ROS2Transition
    public var start_state: ROS2State
    public var goal_state: ROS2State
    
    public init() {
        self.timestamp = 0
        self.transition = ROS2Transition()
        self.start_state = ROS2State()
        self.goal_state = ROS2State()
    }
}
