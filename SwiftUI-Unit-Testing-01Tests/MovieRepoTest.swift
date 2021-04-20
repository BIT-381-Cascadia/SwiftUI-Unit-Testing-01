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
    func testGet_Returns_Expected_Movie()
    {
        sut.add(movie: scifiMovie)
        sut.add(movie: actionMovie)
        let movie0 = sut.get(identifier: 0)
        let movie1 = sut.get(identifier: 1)
        XCTAssertEqual(movie0?.title, "Sci-Fi")
        XCTAssertEqual(movie1?.title, "Action/Adventure")
    }
    //      to show it returns the expected movie
    func testGet_All_Movies_Returns_All()
    {
        sut.add(movie: scifiMovie)
        sut.add(movie: arthouseMovie)
        sut.add(movie: actionMovie)
        XCTAssertEqual(sut.getAllMovies().count, 3)
    }


}
