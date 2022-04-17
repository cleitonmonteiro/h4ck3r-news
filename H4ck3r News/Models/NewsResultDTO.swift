//
//  NewsResultDTO.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import Foundation

struct NewsResultDTO: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
