//
//  FileDecoder.swift
//  SwiftUIEssentials
//
//  Created by Abhilash Palem on 10/04/22.
//

import Foundation

func load<T: Decodable>(from fileName: String) -> T {
    if let fileUrl = Bundle.main.url(forResource: fileName, withExtension: nil) {
        do {
            let data = try Data(contentsOf: fileUrl)
            let result = try JSONDecoder().decode(T.self, from: data)
            return result
        } catch {
            debugPrint(error)
        }
    }
    fatalError("Could not load file")
}
