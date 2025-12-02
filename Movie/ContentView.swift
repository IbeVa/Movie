//
//  ContentView.swift
//  Movie
//
//  Created by Ibe Vangheluwe on 18/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var loading = true
    @Environment(MovieDataStore.self) var movieDataStore
    var body: some View {
        VStack {
            if loading {
                ProgressView("Loading...")
            }else {
                MoviesView()
            }
        }.task {
            await movieDataStore.loadData()
            loading = false
        }
    }
}

