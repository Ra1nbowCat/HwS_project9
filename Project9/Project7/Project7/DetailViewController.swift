//
//  DetailViewController.swift
//  Project7
//
//  Created by Илья Лехов on 06.06.2022.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var detailItem: Petition?
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 200%; } </style>
        </head>
        <body>
        <p align="justify">
        \(detailItem.body)
        </p>
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
    }
    
}
