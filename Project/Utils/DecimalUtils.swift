//
//  DecimalUtils.swift
//  Project
//
//  Created by ebpearls on 6/14/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
