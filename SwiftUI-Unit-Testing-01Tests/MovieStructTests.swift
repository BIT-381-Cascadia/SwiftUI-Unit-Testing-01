//
//  MovieStructTests.swift
//  FilmFestTests
//
//  Created by Author on 1/15/18.
//  Copyright © 2018 Author. All rights reserved.
//

import XCTest

@testable import SwiftUI_Unit_Testing_01
class MovieStructTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK : Initialize Movies
    /**
     * Business Rule: Each Movie has
     *  required "title" string property
     *  optional "releaseDate" string property (default value: nil)
     *  required "shown" bool property (default value: false)
     */
    
    // Test a Movie with a required title property
    func testInit_MovieWithTitle() {
        let testMovie = Movie(title: "Generic Blockbuster")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Generic Blockbuster")
        XCTAssertNil(testMovie.releaseDate)
        XCTAssertEqual(testMovie.shown, false)
    }
    // Test a Movie with it's optional releaseDate property
    func testInit_SetMovieTitleAndReleaseDate() {
        let testMovie = Movie(title: "SciFi Anime", releaseDate: "1987")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "SciFi Anime")
        XCTAssertEqual(testMovie.releaseDate, "1987")
        XCTAssertEqual(testMovie.shown, false)
    }
    
    // TODO: Test a Movie that has already been shown
    func testInit_SetMovieAlreadyWatched(){
        let testMovie = Movie(title: "SciFi Anime", releaseDate: "1987", shown: true)
        XCTAssertTrue(testMovie.shown)
    }


}
