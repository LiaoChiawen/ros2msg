//
//  File.swift
//  
//
//  Created by Yaoyu Hu on 1/10/24.
//

//import Foundation

public class Float64_9: Codable {
    public var d00: Float64 = 0.0
    public var d01: Float64 = 0.0
    public var d02: Float64 = 0.0
    public var d03: Float64 = 0.0
    public var d04: Float64 = 0.0
    public var d05: Float64 = 0.0
    public var d06: Float64 = 0.0
    public var d07: Float64 = 0.0
    public var d08: Float64 = 0.0
    
    public func asArray() -> Array<Float64> {
        var array = Array<Float64>(repeating: 0.0, count: 9)
        array[0] = self.d00
        array[1] = self.d01
        array[2] = self.d02
        array[3] = self.d03
        array[4] = self.d04
        array[5] = self.d05
        array[6] = self.d06
        array[7] = self.d07
        array[8] = self.d08
        
        return array
    }
}

public class Float64_12: Codable {
    public var d00: Float64 = 0.0
    public var d01: Float64 = 0.0
    public var d02: Float64 = 0.0
    public var d03: Float64 = 0.0
    public var d04: Float64 = 0.0
    public var d05: Float64 = 0.0
    public var d06: Float64 = 0.0
    public var d07: Float64 = 0.0
    public var d08: Float64 = 0.0
    public var d09: Float64 = 0.0
    public var d10: Float64 = 0.0
    public var d11: Float64 = 0.0
    
    public func asArray() -> Array<Float64> {
        var array = Array<Float64>(repeating: 0.0, count: 12)
        array[0] = self.d00
        array[1] = self.d01
        array[2] = self.d02
        array[3] = self.d03
        array[4] = self.d04
        array[5] = self.d05
        array[6] = self.d06
        array[7] = self.d07
        array[8] = self.d08
        array[9] = self.d09
        array[10] = self.d10
        array[11] = self.d11
        
        return array
    }
}

public class Covariance36: Codable {
    public var cov00: Float64 = 0.0
    public var cov01: Float64 = 0.0
    public var cov02: Float64 = 0.0
    public var cov03: Float64 = 0.0
    public var cov04: Float64 = 0.0
    public var cov05: Float64 = 0.0
    public var cov06: Float64 = 0.0
    public var cov07: Float64 = 0.0
    public var cov08: Float64 = 0.0
    public var cov09: Float64 = 0.0
    public var cov10: Float64 = 0.0
    public var cov11: Float64 = 0.0
    public var cov12: Float64 = 0.0
    public var cov13: Float64 = 0.0
    public var cov14: Float64 = 0.0
    public var cov15: Float64 = 0.0
    public var cov16: Float64 = 0.0
    public var cov17: Float64 = 0.0
    public var cov18: Float64 = 0.0
    public var cov19: Float64 = 0.0
    public var cov20: Float64 = 0.0
    public var cov21: Float64 = 0.0
    public var cov22: Float64 = 0.0
    public var cov23: Float64 = 0.0
    public var cov24: Float64 = 0.0
    public var cov25: Float64 = 0.0
    public var cov26: Float64 = 0.0
    public var cov27: Float64 = 0.0
    public var cov28: Float64 = 0.0
    public var cov29: Float64 = 0.0
    public var cov30: Float64 = 0.0
    public var cov31: Float64 = 0.0
    public var cov32: Float64 = 0.0
    public var cov33: Float64 = 0.0
    public var cov34: Float64 = 0.0
    public var cov35: Float64 = 0.0
    
    public func asArray() -> Array<Float64> {
        var array = Array<Float64>(repeating: 0.0, count: 36)
        array[0] = self.cov00
        array[1] = self.cov01
        array[2] = self.cov02
        array[3] = self.cov03
        array[4] = self.cov04
        array[5] = self.cov05
        array[6] = self.cov06
        array[7] = self.cov07
        array[8] = self.cov08
        array[9] = self.cov09
        array[10] = self.cov10
        array[11] = self.cov11
        array[12] = self.cov12
        array[13] = self.cov13
        array[14] = self.cov14
        array[15] = self.cov15
        array[16] = self.cov16
        array[17] = self.cov17
        array[18] = self.cov18
        array[19] = self.cov19
        array[20] = self.cov20
        array[21] = self.cov21
        array[22] = self.cov22
        array[23] = self.cov23
        array[24] = self.cov24
        array[25] = self.cov25
        array[26] = self.cov26
        array[27] = self.cov27
        array[28] = self.cov28
        array[29] = self.cov29
        array[30] = self.cov30
        array[31] = self.cov31
        array[32] = self.cov32
        array[33] = self.cov33
        array[34] = self.cov34
        array[35] = self.cov35
        
        // TODO: Does this make a copy????
        return array
    }
}
