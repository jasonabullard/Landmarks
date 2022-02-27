//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import SwiftUI

struct CircleImage: View {
    
    var imageName: String
    
    var body: some View {
        
        Image(imageName)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(color: .gray, radius: 7, x: 0, y: 0)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "turtlerock")
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
