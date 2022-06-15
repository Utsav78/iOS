//
//  CurrencyFormatterTests.swift
//  ProjectTests
//
//  Created by ebpearls on 6/15/22.
//

import Foundation
import XCTest

@testable import Project

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
     
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testShouldBeVisible() throws {
        
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0,"929,466")
        XCTAssertEqual(result.1,"23")
    }
    
    func testDollarsFormatted(_ dollars: Double) throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
        
    }
        
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "$0.00")
        
    }
    
    func testDollarsFormattedWithCurrencySymbol() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466.23)
        print("\(currencySymbol)")
        XCTAssertEqual(result, "\(currencySymbol)929,466.23")
        
    }
}

