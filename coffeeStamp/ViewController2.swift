//
//  ViewController2.swift
//  coffeeStamp
//
//  Created by Szi Gabor on 4/7/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController,WKUIDelegate,WKNavigationDelegate {
    
    var webView: WKWebView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myBlog = "http://www.oddfoxcoffee.com"
        let url = URL(string: myBlog)
        let request = URLRequest(url: url!)
        
        // init and load request in webview.
        webView = WKWebView(frame: self.view.frame)
        webView.navigationDelegate = self
        webView.load(request)
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)
        
      


    }

    



}
