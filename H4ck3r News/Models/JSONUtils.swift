//
//  JSONUtils.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import Foundation


struct JSONUtils {
    static let decoder = JSONDecoder()
    
    static func tryDecodeJSON<T: Decodable>(type: T.Type, data: Data) -> T? {
        do {
            let result = try decoder.decode(T.self, from: data)
            return result
        } catch {
            // Handle error
            print(error.localizedDescription)
        }
        return nil
    }
}
