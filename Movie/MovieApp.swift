//
//  MovieApp.swift
//  Movie
//
//  Created by Ibe Vangheluwe on 18/11/2025.
//

import SwiftUI

@main
struct MovieApp: App {
    @State var movieDataStore = MovieDataStore()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(movieDataStore).environment(pathStore)
        }
    }
}
