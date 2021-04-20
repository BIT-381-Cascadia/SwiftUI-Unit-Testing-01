//
//  MovieRepository.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation
// TODO : Add to the protocol as dictated by the Test
public protocol MovieRepository {
    var count:Int { get }
    func get( identifier:Int ) -> Movie?
    func getAllMovies() -> [Movie]
    func add(movie: Movie)
}

//TODO : Be sure the repo conforms to the MovieRepository protocol
public class MovieDataRepository:MovieRepository{
    private var movieData = [Movie]()
    
    public var count: Int { return movieData.count }
    
    public func add(movie: Movie){
        movieData.append(movie);
    }
    
    public func get(identifier: Int) -> Movie? {
        return movieData[identifier];
    }
    public func getAllMovies() -> [Movie] {
        return movieData;
    }

}
