import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "IphoneSpeechPromptResponse")
public class ROS2IphoneSpeechPromptResponse: ROS2Cmd {
    public var index: Int32  // Required by ROS2Cmd.
    public var status: UInt8
    
    public init () {
        self.index = -1
        self.status = 0
    }
}
