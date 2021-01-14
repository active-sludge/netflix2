//
//  Movie.swift
//  Netflix2
//
//  Created by Huseyin Can Dayan on 28.12.2020.
//

import Foundation

struct Movie: Identifiable {
//  To assign unique id to a model
//  var id: String = UUID().uuidString
  
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
//    MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
//    Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}