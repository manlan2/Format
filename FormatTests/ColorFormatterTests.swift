//
//  ColorFormatterTests.swift
//  Format
//
//  Created by Roy Marmelstein on 25/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import XCTest
@testable import Format

class ColorFormatterTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testColorRed() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "ff0000"
        let redColor = colorFormatter.format(colorToFormat)
        let normalizedRedComponent = Int(CIColor(cgColor: redColor.cgColor).red*255)
        XCTAssertEqual(normalizedRedComponent, 255)
    }
    
    func testColorGreen() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "00ff00"
        let greenColor = colorFormatter.format(colorToFormat)
        let normalizedGreenComponent = Int(CIColor(cgColor: greenColor.cgColor).green*255)
        XCTAssertEqual(normalizedGreenComponent, 255)
    }

    func testColorBlue() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "0000ff"
        let blueColor = colorFormatter.format(colorToFormat)
        let normalizedBlueComponent = Int(CIColor(cgColor: blueColor.cgColor).blue*255)
        XCTAssertEqual(normalizedBlueComponent, 255)
    }
    
    func testColorBlack() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "000000"
        let blackColor = colorFormatter.format(colorToFormat)
        let normalizedBlueComponent = Int(CIColor(cgColor: blackColor.cgColor).blue*255)
        XCTAssertEqual(normalizedBlueComponent, 0)
    }
    
    func testColorWhite() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "ffffff"
        let whiteColor = colorFormatter.format(colorToFormat)
        let normalizedBlueComponent = Int(CIColor(cgColor: whiteColor.cgColor).blue*255)
        XCTAssertEqual(normalizedBlueComponent, 255)
    }

    func testColorRandom() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "2ba134"
        let randomColor = colorFormatter.format(colorToFormat)
        let normalizedBlueComponent = Int(CIColor(cgColor: randomColor.cgColor).blue*255)
        XCTAssertEqual(normalizedBlueComponent, 52)
    }
    
    func testColorInvalidEmpty() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = ""
        let randomColor = colorFormatter.format(colorToFormat)
        let normalizedBlueComponent = Int(CIColor(cgColor: randomColor.cgColor).blue*255)
        XCTAssertEqual(normalizedBlueComponent, 0)
    }
    

}
