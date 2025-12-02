//
//  PathStore.swift
//  Movie
//
//  Created by Ibe Vangheluwe on 18/11/2025.
//

import Foundation

@Observable
class PathStore{
    var path = [Route]()
    
    func clear(){
        path.removeAll()
    }
    func reduceArray(index: Int){
        path = Array(path.prefix(index + 1))
    }
}
