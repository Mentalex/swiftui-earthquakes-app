//
//  EarthquakesTests.swift
//  EarthquakesTests
//
//  Created by Alex Tapia on 18/12/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import XCTest
@testable import Earthquakes

final class EarthquakesTests: XCTestCase {
  
  func testGeoJSONDecoderDecodesQuake() throws {
    let decoder = JSONDecoder()
    let quake = try decoder.decode(Quake.self, from: testFeature_nc73649170)
    
    XCTAssertEqual(quake.code, "73649170")
  }
}
