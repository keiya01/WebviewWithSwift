//
//  ViewController.swift
//  WebviewWithSwift
//
//  Created by Keiya Sasaki on 2022/08/30.
//

import WebKit
import SwiftUI
import AppKit

struct WebView: NSViewRepresentable {
    typealias NSViewType = WKWebView
    
    func makeNSView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.load(URLRequest(url: URL(string: "https://mdn.github.io/dom-examples/pointer-lock")!))
        return webView
    }
    func updateNSView(_ nsView: WKWebView, context: Context) {
    }
}

