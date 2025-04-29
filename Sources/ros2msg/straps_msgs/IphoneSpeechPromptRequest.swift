import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Speech Prompt Message
@ROS2MsgType("straps_msgs", "IphoneSpeechPromptRequest")
public class ROS2IphoneSpeechPromptRequest: ROS2Cmd {
    public var index: Int32
    public var time: Int32
    public var prompt: String
    
    public init () {
        self.index = -1
        self.time = -1
        self.prompt = ""
    }
}
