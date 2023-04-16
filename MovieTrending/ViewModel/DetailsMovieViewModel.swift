//
//  DetailsMovieViewController.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/15/23.
//

import Foundation



class DetailsMovieViewModel {
    var movie: Movie
    
    var movieImage: URL?
    
    var movieTitle: String
    
    var movieDescription: String
    
    var movieID: Int
    
    
    init(movie: Movie) {
        self.movie = movie
        
        
        self.movieDescription = movie.overview ?? ""
        
      
        self.movieTitle = movie.title ?? ""
        
        self.movieID = movie.id
        
        self.movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
