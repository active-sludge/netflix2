//
//  HomeVM.swift
//  Netflix2 (iOS)
//
//  Created by Huseyin Can Dayan on 29.12.2020.
//

import Foundation

class HomeVM: ObservableObject {
    
//    String is the Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({String($0)})
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCategory category: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
         
        switch homeRow {
        case .home:
            return movies[category] ?? []
        case .movies:
            return (movies[category] ?? []).filter({($0.movieType == .movie) && ($0.genre == genre)})
        case .tvShows:
            return (movies[category] ?? []).filter({($0.movieType == .tvShow) && ($0.genre == genre)})
        case .myList:
            return movies[category] ?? []
//            TODO: Setup MyList Properly
        }
    }

    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-UP Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch it again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
