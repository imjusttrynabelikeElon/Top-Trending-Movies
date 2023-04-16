//
//  MovieTableCellViewModel.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/15/23.
//

import Foundation




class MovieTableCellViewModel {
    
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageURL: URL?
    
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.originalTitle ?? ""
        self.rating =  "\(movie.voteAverage)/10"
        self.date = movie.releaseDate
        self.imageURL = makeImageURL(movie.posterPath ?? "")
    }
    
    // we use private because we only will use this func in this MovieTableCellViewModel.
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
