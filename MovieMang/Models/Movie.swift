//
//  Movie.swift
//  MovieMang
//
//  Created by Jesse Hough on 09/19/23.
//

import Foundation


struct Movie {
        let id: Int
        let originalTitle: String
        let title: String
        let overview: String
        let releaseDate: String
        let backdropPath: String?
        let posterPath: String
        let voteAverage: Double
        let voteCount: Int
}

extension Movie {
    static var mockedMovies: [Movie] = [

        Movie(
            id: 857,
            originalTitle: "Saving Private Ryan",
            title: "Saving Private Ryan",
            overview: "As U.S. troops storm the beaches of Normandy, three brothers lie dead on the battlefield, with a fourth trapped behind enemy lines. Ranger captain John Miller and seven men are tasked with penetrating German-held territory and bringing the boy home.",
            releaseDate: "1998-07-24",
            backdropPath: "https://image.tmdb.org/t/p/original/bdD39MpSVhKjxarTxLSfX6baoMP.jpg",
            posterPath: "https://image.tmdb.org/t/p/original/uqx37cS8cpHg8U35f9U5IBlrCV3.jpg",
            voteAverage: 8.208,
            voteCount: 14626
        ),
        Movie(
            id: 509207,
            originalTitle: "Combat Obscura",
            title: "Combat Obscura",
            overview: "Former combat videographer Miles Lagoze presents personal footage of U.S. Marines in the Afghan war zone.",
            releaseDate: "2018-03-01",
            backdropPath: "https://image.tmdb.org/t/p/original/jWFNMFyk6qBVzPo1ickxmlnvuls.jpg",
            posterPath: "https://image.tmdb.org/t/p/original/A4BiG9G4s2EpWAnQtY6rbWiHc1Q.jpg",
            voteAverage: 6.2,
            voteCount: 10
        ),
        Movie(
            id: 49051,
            originalTitle: "The Hobbit: An Unexpected Journey",
            title: "The Hobbit: An Unexpected Journey",
            overview: "Bilbo Baggins, a hobbit enjoying his quiet life, is swept into an epic quest by Gandalf the Grey and thirteen dwarves who seek to reclaim their mountain home from Smaug, the dragon.",
            releaseDate: "2012-12-12",
            backdropPath: "https://image.tmdb.org/t/p/original/xyXmtuvsoM5J3yNad0nvcetpBdY.jpg",
            posterPath: "https://image.tmdb.org/t/p/original/yHA9Fc37VmpUA5UncTxxo3rTGVA.jpg",
            voteAverage: 7.338,
            voteCount: 17331
        ),
        Movie(
            id: 7220,
            originalTitle: "The Punisher",
            title: "The Punisher",
            overview: "When undercover FBI agent Frank Castle's wife and son are slaughtered, he becomes 'the Punisher' -- a ruthless vigilante willing to go to any length to avenge his family.",
            releaseDate: "2004-04-15",
            backdropPath: "https://image.tmdb.org/t/p/original/4iypY05iUKFh3luIiVAGUofvsCb.jpg",
            posterPath: "https://image.tmdb.org/t/p/original/7rmA1HwYp2GKM85BL0cVwCaosGr.jpg",
            voteAverage: 6.33,
            voteCount: 2575
        ),
        Movie(
            id: 769,
            originalTitle: "GoodFellas",
            title: "GoodFellas",
            overview: "The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.",
            releaseDate: "1990-09-12",
            backdropPath: "https://image.tmdb.org/t/p/original/sw7mordbZxgITU877yTpZCud90M.jpg",
            posterPath: "https://image.tmdb.org/t/p/original/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg",
            voteAverage: 8.464,
            voteCount: 11703
        )
    ]
}
