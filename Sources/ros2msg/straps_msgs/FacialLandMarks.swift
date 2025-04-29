import Foundation
import ROS2MsgProtocol
import ROS2MsgMacros

//Parsed Binary data frames from radar
@ROS2MsgType("straps_msgs", "FacialLandMarks")
public class ROS2FacialLandMarks: ROS2Message {
    // BBox is defined in dimensionless range 0.0 - 1.0
    public var header: ROS2Header
    public var precision_scores: Array<Float>
    public var points: Array<ROS2Point>
    public var type: String
    
    public init () {
        self.header = ROS2Header()
        self.precision_scores = Array<Float>()
        self.points = Array<ROS2Point>()
        self.type = ""
    }
}
