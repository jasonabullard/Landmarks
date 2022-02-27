//
//  Landmark.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import Foundation
import CoreLocation

struct Landmark: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var imageName: String
    var isFavorite: Bool
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    var annotationItem: AnnotationItem {
        
        return AnnotationItem(id: self.id, coordinate: locationCoordinate)
        
    }
}
