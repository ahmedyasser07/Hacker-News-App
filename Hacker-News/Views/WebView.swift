//
//  WebView.swift
//  Hacker-News
//
//  Created by Ahmed Abdelfatah on 10/09/2022.
//

import Foundation
import SwiftUI
import WebKit

//Must import WebKit & SwiftUI Packages

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString{
            if let url = URL(string: safeURL){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

