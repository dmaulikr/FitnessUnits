//
//  UnitTorque.swift
//  FitnessUnits
//
//  Created by Kevin Hoogheem on 4/1/17.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

@available(OSX 10.12, *)
open class UnitTorque: Dimension {

    private struct Symbol {
        static let kilogramForceMeter   = "kgf·m"
        static let newtonMeter          = "N·m"
        static let footPoundForce       = "lbf·ft"
    }

    private struct Coefficient {
        static let kilogramForceMeter   = 0.101972
        static let newtonMeter          = 1.0
        static let footPoundForce       = 1.3558
    }


    private init(symbol: String, coefficient: Double) {
        super.init(symbol: symbol, converter: UnitConverterLinear(coefficient: coefficient))
    }

    open class var newtonMeter: UnitTorque {
        get {
            return UnitTorque(symbol: Symbol.newtonMeter, coefficient: Coefficient.newtonMeter)
        }
    }

    open class var footPoundForce: UnitTorque {
        get {
            return UnitTorque(symbol: Symbol.footPoundForce, coefficient: Coefficient.footPoundForce)
        }
    }

    open class var kilogramForceMeter: UnitTorque {
        get {
            return UnitTorque(symbol: Symbol.kilogramForceMeter, coefficient: Coefficient.kilogramForceMeter)
        }
    }

    open override class func baseUnit() -> UnitTorque {
        return UnitTorque.newtonMeter
    }

    public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
    open override func encode(with aCoder: NSCoder) { super.encode(with: aCoder) }
    
}
