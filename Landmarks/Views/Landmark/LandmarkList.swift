//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject private var model: ContentModel
    
    @State private var showFavoritesOnly = false
    private var filteredLandmarks: [Landmark] {
        model.landmarks.filter {
            !showFavoritesOnly || $0.isFavorite
        }
    }
    
    var body: some View {
        
        NavigationView {
            List {
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    .buttonStyle(.plain)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Landmarks")
        }
        .navigationViewStyle(.stack)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ContentModel())
    }
}
