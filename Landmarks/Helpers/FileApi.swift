//
//  FileApi.swift
//  Landmarks
//
//  Created by Jason Bullard on 2/26/22.
//

import Foundation

final class FileApi {
    
    static func load<T: Decodable>(_ withFileName: String) -> T {
        
        // Get url to the main bundle file
        guard let fileUrl = Bundle.main.url(forResource: withFileName, withExtension: nil) else {
            fatalError("Couldn't find \(withFileName) in main bundle")
        }
        
        do {
            let data = try Data(contentsOf: fileUrl)
            
            do {
                let decoder = JSONDecoder()
                return try decoder.decode(T.self, from: data)
            } catch {
                fatalError("Couldn't parse \(withFileName) as \(T.self):\n\(error)")
            }
        } catch {
            fatalError("Couldn't load \(withFileName) from main bundle: \n\(error)")
        }
    }
}
