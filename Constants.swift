//
//  Constants.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import Foundation

struct K {
    static let appName = "H4ck3r News"
    static let loadindData = "Loading data..."
    static let dontHaveURL = "This post does not have a URL."

    struct URL {
        static let hnFrontPage = "https://hn.algolia.com/api/v1/search?tags=front_page"
    }
    
    struct Images {
        static let notFoundDark = "notFoundDark"
        static let notFoundLight = "notFoundLight"
    }
}
