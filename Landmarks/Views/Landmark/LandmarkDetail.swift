//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                
                MapView()
                    .frame(height: 300)
                
                CircleImage(imageName: landmark.imageName)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .bold()
                    
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
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ContentModel().landmarks[1])
    }
}
