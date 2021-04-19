//
//  FilmFestUI.swift
//  SwiftUI-Unit-Testing-01
//
//  Created by Mike Panitz on 4/17/21.
//

import SwiftUI

struct FilmFestUI: View {
    
    var movie_store: MovieRepository!
    
    public init() {
        movie_store = MovieDataRepository()
        movie_store.add( movie: Movie(title: "Teen Comedy", releaseDate: "2015"))
        movie_store.add( movie: Movie(title: "Dark Comedy", releaseDate: "2016"))
        movie_store.add( movie: Movie(title: "Comedy", releaseDate: "2017"))
    }
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Film Fest")
                            .font(.title)
                List(movie_store.getAllMovies()) { movie in
                        Text( movie.title)
                }
            }
        }
  
        .background(Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

struct FilmFestUI_Previews: PreviewProvider {
    static var previews: some View {
        FilmFestUI()
    }
}
