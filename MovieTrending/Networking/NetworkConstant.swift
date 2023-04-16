//
//  NetworkConstant.swift
//  MovieTrending
//
//  Created by Karon Bell on 4/14/23.
//

import Foundation



class NetworkConstant {
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        // Singletone
        
        
    }
    // this is the corre
    public var apiKey: String {
        get {
            // API Key from //https://www.themoviedb.org/settings/api\
            return "cb05bbf55e76b8432ba081c2255e883c"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
