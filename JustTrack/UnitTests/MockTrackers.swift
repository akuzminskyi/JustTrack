//
//  MockTrackers.swift
//  JustTrack
//
//  Copyright © 2017 Just Eat Holding Ltd.
//

import Foundation
import JustTrack
import XCTest

final class MockTracker: EventTracker {
    let name: String
    var didTrackExpectation: XCTestExpectation?
    var trackEventInvocationCount = 0
    
    init(name: String) {
        self.name = name
    }

    public func trackEvent(_ name: String, payload: Payload) -> Bool {
        trackEventInvocationCount += 1
        didTrackExpectation?.fulfill()
        return true
    }
}
