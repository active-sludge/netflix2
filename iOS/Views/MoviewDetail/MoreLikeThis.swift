//
//  MoreLikeThis.swift
//  Netflix2 (iOS)
//
//  Created by Huseyin Can Dayan on 2.01.2021.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
            LazyVGrid (columns: columns){
                ForEach(0..<movies.count) { index in
                    StandartHomeMovie(movie: movies[index])
                }
            }
            .foregroundColor(.white)
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            MoreLikeThis(movies: exampleMovies)
        }
    }
}
