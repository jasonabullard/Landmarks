//
//  MapView.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/27/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var landmark: Landmark
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(),
        span: MKCoordinateSpan()
    )
    
    @State private var annotations = [AnnotationItem]()
    
    var body: some View {
        
        Map(coordinateRegion: $region, interactionModes: .zoom, showsUserLocation: false, userTrackingMode: .none, annotationItems: annotations) { annotation in
            MapMarker(coordinate: annotation.coordinate, tint: .blue)
        }
        .onAppear {
            setAnnotation()
            setRegion(coordinate: landmark.locationCoordinate)
        }
        
    }
    
    private func setRegion(coordinate: CLLocationCoordinate2D) {
        
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
        
    }
    
    private func setAnnotation() {
        
        self.annotations.append(landmark.annotationItem)
        
    }
}

struct NewMapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(landmark: ContentModel().landmarks[0])
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
