//
//  HomeView.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            
            MapView()
                .ignoresSafeArea()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct HomveView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
