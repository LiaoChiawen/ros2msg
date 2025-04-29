import Foundation

import ROS2MsgProtocol
import ROS2MsgMacros

public enum SpeechViewStatusType: UInt32 {
    case IN_THIS_VIEW            = 1 // 0x01
    case TRANSCRIPTION_FINISHED  = 2 // 0x02
    
    public var value: UInt32 {
        switch self {
        case .IN_THIS_VIEW:
            return 1
        case .TRANSCRIPTION_FINISHED:
            return 2
        }
    }
}

//SpeechView message message
@ROS2MsgType("straps_msgs", "IphoneSpeechViewStatus")
public class ROS2IphoneSpeechViewStatus: ROS2Message {
    
    public var flags: UInt32
    
    public init () {
        self.flags = 0 // 0x00
    }
}
