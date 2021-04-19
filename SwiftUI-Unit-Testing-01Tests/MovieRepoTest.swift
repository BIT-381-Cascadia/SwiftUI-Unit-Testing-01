//
//  MovieRepoTest.swift
//  FilmFestTests
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import XCTest

@testable import SwiftUI_Unit_Testing_01
class MovieRepoTest: XCTestCase {
    var sut: MovieRepository!
    
    let scifiMovie = Movie(title: "Sci-Fi")
    let arthouseMovie = Movie(title: "Arthouse Drama")
    let actionMovie = Movie(title: "Action/Adventure")


    override func setUp() {
        sut = MovieDataRepository()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: Initial Value Test
    /**
     * Business Rule: MovieDataRepository starts out empty
     */
    
    func testInit_RepositoryCount_IsZero(){
        XCTAssertEqual(sut.count, 0)
    }
    
    // MARK: Add and Query Values
    /**
     * Business Rule: Movies are appended to the repo in order
     *      and accessed via their index number
     */
    
    func testAdd_RepositoryCount_IsOne()
    {
        sut.add(movie: scifiMovie)
        XCTAssertEqual(sut.count, 1)
    }
    
    //TODO : Write a test for the get functionality
    //      to show it returns the expected movie
    
    func testGet_Excpected_Movie(){
        sut.add(movie: scifiMovie)
        sut.add(movie: arthouseMovie)
        
        let tesMovie: Movie = sut.get(identifier: 0)!
        XCTAssertNotNil(tesMovie)
        XCTAssertEqual(tesMovie.title, scifiMovie.title)
        XCTAssertEqual(tesMovie.releaseDate, scifiMovie.releaseDate)
        XCTAssertEqual(tesMovie.shown, scifiMovie.shown)
        
        
        let tesMovie2: Movie = sut.get(identifier: 1)!
        XCTAssertNotNil(tesMovie2)
        XCTAssertEqual(tesMovie2.title, arthouseMovie.title)
        XCTAssertEqual(tesMovie2.releaseDate, arthouseMovie.releaseDate)
        XCTAssertEqual(tesMovie2.shown, arthouseMovie.shown)
    }


}
