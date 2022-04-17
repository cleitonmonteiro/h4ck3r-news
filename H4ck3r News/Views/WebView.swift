//
//  WebView.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = url {
            let request = URLRequest(url: safeUrl)
            uiView.load(request)
        }
    }
    
}
