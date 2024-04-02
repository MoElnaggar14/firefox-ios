// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import XCTest

@testable import Client

final class PrivateHomepageViewControllerTests: XCTestCase {
    let windowUUID: WindowUUID = UUID(uuidString: "D9D9D9D9-D9D9-D9D9-D9D9-CD68A019860B")!

    override class func setUp() {
        super.setUp()
        DependencyHelperMock().bootstrapDependencies()
    }

    override func tearDown() {
        super.tearDown()
        DependencyHelperMock().reset()
    }

    func testPrivateHomepageViewController_simpleCreation_hasNoLeaks() {
        let overlayManager = MockOverlayModeManager()
        let privateHomeViewController = PrivateHomepageViewController(windowUUID: windowUUID, overlayManager: overlayManager)

        trackForMemoryLeaks(privateHomeViewController)
    }
}
