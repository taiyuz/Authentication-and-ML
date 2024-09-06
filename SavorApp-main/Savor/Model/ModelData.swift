//
//  ModelData.swift
//  Savor
//
//  Created by Zhining Zhao on 8/18/24.
//

// Store all the model data in this file.

import Foundation

@Observable
class ModelData {
    
    // Store data

}

// Function to load information from the JSON files. We use this for testing, before using Firebase.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
