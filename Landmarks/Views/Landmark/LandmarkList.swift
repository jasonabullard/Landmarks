//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject private var model: ContentModel
    
    var body: some View {
        
        NavigationView {
            List(model.landmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                .buttonStyle(.plain)
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
