//
//  ContentModel.swift
//  ContentModel
//
//  Created by Jason Bullard on 2/26/22.
//

import Foundation

final class ContentModel: ObservableObject {
    
    @Published var landmarks: [Landmark] = FileApi.load("landmarkData.json")    
}
