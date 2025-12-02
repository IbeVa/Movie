//
//  Route.swift
//  Movie
//
//  Created by Ibe Vangheluwe on 18/11/2025.
//

import Foundation


enum Route: Hashable{
    case director(Director)
    case actor (Actor)
    case movie (Movie)
}
