//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject private var model: ContentModel
    
    var landmark: Landmark
    
    private var landmarkIndex: Int {
        model.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
//                MapView(landmark: landmark)
//                    .frame(height: 300)
                
                MapView(landmark: landmark)
                    .frame(height: 300)
                
                CircleImage(imageName: landmark.imageName)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                            .bold()
                        
                        Spacer()
                        
                        FavoriteButton(isSet: $model.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                        .bold()
                    
                    Text(landmark.description)
                }
                .padding()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ContentModel().landmarks[1])
    }
}
