//
//  StandartHomeMovie.swift
//  Netflix2
//
//  Created by Huseyin Can Dayan on 28.12.2020.
//

import SwiftUI
import KingfisherSwiftUI

struct StandartHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandartHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandartHomeMovie(movie: exampleMovie1)
    }
}
