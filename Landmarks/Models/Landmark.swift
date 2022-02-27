//
//  Landmark.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import Foundation

struct Landmark: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var imageName: String
    var coordinates: Coordinates
    
}
