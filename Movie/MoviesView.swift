//
//  MoviesView.swift
//  Movie
//
//  Created by Ibe Vangheluwe on 18/11/2025.
//

import SwiftUI

struct MoviesView: View {
    @State var selectedMovie : Movie?
    @Environment(MovieDataStore.self) var movieDataStore
    var body: some View {
        List(movieDataStore.getMovies(), id: \.self, selection: $selectedMovie) { movie in
            Text(movie.title)
        }
    }
}

