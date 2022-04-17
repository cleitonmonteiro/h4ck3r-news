//
//  DetailView.swift
//  H4ck3r News
//
//  Created by Cleiton Monteiro on 17/04/22.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    let url: String?

    var body: some View {
        if let safeUrl = url {
            WebView(url: URL(string: safeUrl))
        } else {
            Image(colorScheme == .dark ? K.Images.notFoundDark : K.Images.notFoundLight)
            Text(K.dontHaveURL)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "google.com")
    }
}
