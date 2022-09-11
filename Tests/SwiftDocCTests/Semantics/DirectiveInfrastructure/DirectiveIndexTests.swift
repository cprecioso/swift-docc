/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2022 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See https://swift.org/LICENSE.txt for license information
 See https://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import XCTest
@testable import SwiftDocC
import Markdown

class DirectiveIndexTests: XCTestCase {
    func testDirectiveIndexHasExpectedDirectives() {
        XCTAssertEqual(
            DirectiveIndex.shared.indexedDirectives.keys.sorted(),
            [
                "Assessments",
                "Chapter",
                "Choice",
                "Column",
                "DeprecationSummary",
                "DisplayName",
                "DocumentationExtension",
                "Image",
                "Intro",
                "Justification",
                "Metadata",
                "Redirected",
                "Row",
                "Snippet",
                "Stack",
                "TechnologyRoot",
                "Tutorial",
                "TutorialReference",
                "Video",
                "XcodeRequirement",
            ]
        )
    }
    
    func testDirectiveIndexHasExpectedRenderableDirectives() {
        XCTAssertEqual(
            DirectiveIndex.shared.renderableDirectives.keys.sorted(),
            [
                "Row",
            ]
        )
    }
}
