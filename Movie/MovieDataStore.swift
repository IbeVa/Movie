//
//  MovieDataStore.swift
//  Movies
//
//  Created by Dirk Hostens on 04/12/2023.
//

import Foundation

@Observable
class MovieDataStore {
    private var movies = Movies()
    
    init(){
        Task{
            await loadData()
        }
    }
    
    func getMovies() -> [Movie] {
        return movies.movies
    }
    /*
    func getMovies(actor: Actor) -> [Movie] {
        
    }
    
    func getMovies(director: Director) -> [Movie] {
        
    }
    
    func getACtors(director: Director) -> [Actor] {
        
    }
    
     **/
    private func sort() {
        movies.movies.sort { movie1, movie2 in
            return movie1.title < movie2.title
        }
    }
    
    func loadData() async {
        //simulate async call
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2)) // Simulate long load
            movies.movies = load("movies.json")
            sort()
            print("✅ Data loaded successfully.")
            
        } catch {
            print("❌ Failed to load uurrooster:", error)
            //movies is lege array
        }
    }
}
