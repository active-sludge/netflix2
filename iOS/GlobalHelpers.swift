//
//  GlobalHelpers.swift
//  Netflix2
//
//  Created by Huseyin Can Dayan on 28.12.2020.
//

import Foundation

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

let exampleTrailer = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let episode1 =
    Episode(
        name: "Nulla Aliquet",
        season: 1,
        episodeNumber: 8,
        thumbnailImageURLString: "https://picsum.photos/120/70",
        description: "Sed sed risus pretium quam vulputate dignissim suspendisse in est. Ullamcorper velit sed ullamcorper morbi. Eget duis at tellus at. Dignissim convallis aenean et tortor at risus viverra adipiscing. Nunc lobortis mattis aliquam faucibus purus in. Eget nullam non nisi est sit. Commodo sed egestas egestas fringilla phasellus faucibus. Sociis natoque penatibus et magnis dis",
        length: 53,
        videoURL: exampleVideoURL
    )

let episode2 =
    Episode(
        name: "Pellentesque",
        season: 1,
        episodeNumber: 4,
        thumbnailImageURLString: "https://picsum.photos/120/71",
        description: "Semper auctor neque vitae tempus quam pellentesque. Turpis massa tincidunt dui ut ornare lectus. Augue ut lectus arcu bibendum at varius vel.",
        length: 48,
        videoURL: exampleVideoURL
    )

let episode3 =
    Episode(
        name: "Purus gravida",
        season: 1,
        episodeNumber: 2,
        thumbnailImageURLString: "https://picsum.photos/120/70",
        description: "Eu mi bibendum neque egestas congue. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus in.",
        length: 50,
        videoURL: exampleVideoURL
    )

let episode4 =
    Episode(
        name: "Nulla Aliquet",
        season: 2,
        episodeNumber: 8,
        thumbnailImageURLString: "https://picsum.photos/120/70",
        description: "Sed sed risus pretium quam vulputate dignissim suspendisse in est. Ullamcorper velit sed ullamcorper morbi. Eget duis at tellus at. Dignissim convallis aenean et tortor at risus viverra adipiscing. Nunc lobortis mattis aliquam faucibus purus in. Eget nullam non nisi est sit. Commodo sed egestas egestas fringilla phasellus faucibus. Sociis natoque penatibus et magnis dis",
        length: 53,
        videoURL: exampleVideoURL
    )

let episode5 =
    Episode(
        name: "Pellentesque",
        season: 2,
        episodeNumber: 4,
        thumbnailImageURLString: "https://picsum.photos/120/70",
        description: "Semper auctor neque vitae tempus quam pellentesque. Turpis massa tincidunt dui ut ornare lectus. Augue ut lectus arcu bibendum at varius vel.",
        length: 48,
        videoURL: exampleVideoURL
    )

let episode6 =
    Episode(
        name: "Purus gravida",
        season: 2,
        episodeNumber: 2,
        thumbnailImageURLString: "https://picsum.photos/120/70",
        description: "Eu mi bibendum neque egestas congue. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus in.",
        length: 50,
        videoURL: exampleVideoURL
    )

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailers = [exampleTrailer, exampleTrailer2, exampleTrailer3]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Stone John, Priya Ponnappa, Wong Mia",
    cast: "Peter Stanbridge, Natalie Lee-Walsh, Ang Li",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators: "Nguta Ithya, Tamzyn French",
    cast: "Salome Simoes, Trevor Virtue",
    moreLikeThisMovies: [],
    promotionHeadline: "Best rated show",
    trailers: exampleTrailers
)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo3,
    creators: "Tarryn Campbell-Gillies, Eugenia Anders",
    cast: "Andrew Kazantzis, Verona Blair",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Jane Meldrum",
    cast: "Maureen M. Smith",
    moreLikeThisMovies: [],
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers
)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo2,
    creators: "Desiree Burch",
    cast: "Daly Harry, Hayman Andrews",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo3,
    creators: "Ruveni Ellawala",
    cast: "Alfredo Grant, Landon Baxter",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch season 6 now",
    trailers: exampleTrailers
)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2019,
    rating: "TV-MA",
    numberOfSeasons: 7,
    defaultEpisodeInfo: exampleEpisodeInfo3,
    creators: "Ruveni Ellawala",
    cast: "Alfredo Grant, Landon Baxter",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch season 7 now",
    trailers: exampleTrailers
)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 =
    CurrentEpisodeInfo(
        episodeName: "Beginnings and Endinds",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere eros justo, eu feugiat lectus ultrices vel. Aliquam volutpat a arcu sed placerat. Ut posuere felis in posuere vulputate. Pellentesque vel diam in metus facilisis euismod. Suspendisse rutrum ex in diam accumsan, in egestas felis tincidunt.",
        season: 2,
        episode: 1
    )

let exampleEpisodeInfo2 =
    CurrentEpisodeInfo(
        episodeName: "Neque porro",
        description: "Vivamus tempor nulla eget turpis pretium elementum. Sed dui arcu, posuere et metus a, gravida pretium enim. Curabitur a neque mauris. Donec gravida est quis semper varius. Nam semper ac odio a scelerisque. Duis faucibus lorem laoreet, tempor ex et, tristique mauris. Ut id sodales libero.",
        season: 3,
        episode: 2
    )

let exampleEpisodeInfo3 =
    CurrentEpisodeInfo(
        episodeName: "Quisquam est",
        description: "Praesent sodales porttitor diam non blandit. Aliquam rhoncus, purus eu aliquet luctus, elit eros laoreet lacus, ac malesuada metus neque interdum leo. Suspendisse sed varius magna, quis vehicula nisl. Nam tempor, lorem bibendum lacinia consectetur, quam elit aliquet ipsum, a lacinia nibh turpis quis dolor. .",
        season: 1,
        episode: 3)
