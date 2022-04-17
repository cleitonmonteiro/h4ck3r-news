//
//  NetworkManager.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading = false
    
    func fetchNews(_ url: String) {
        DispatchQueue.main.async {
            self.isLoading = true
        }
        if let url = URL(string: url) {
            let urlSession = URLSession(configuration: .default)
            urlSession.dataTask(with: url) { data, response, error in
                if error == nil {
                    if let body = data {
                        if let result = JSONUtils.tryDecodeJSON(type: NewsResultDTO.self, data: body) {
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        }
                    }
                } else {
                    // Handle error
                    print(error!.localizedDescription)
                }
                DispatchQueue.main.async {
                    self.isLoading = false
                }
            }.resume()
        }
    }
}
