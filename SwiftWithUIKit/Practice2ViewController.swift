//
//  Practice2ViewController.swift
//  SwiftWithUIKit
//
//  Created by tohrinagi on 2015/11/06.
//  Copyright (c) 2014 tohrinagi. All rights reserved.
//

import UIKit

///Practice2 UIViewへの他のViewの追加
class Practice2ViewController: UIViewController, UIWebViewDelegate {
    
    var webView = Practice2View()
    
    ///インスタンス化された時1回だけ呼ばれる Viewの作成はここでするべき
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.frame = self.view.bounds
        self.view.addSubview(self.webView)
        
        var nsUrl : NSURL? = NSURL(string: "http://google.com")
        var urlString = NSURLRequest(URL: nsUrl!)
        self.webView.loadRequest( urlString )
    }
    
    ///メモリ警告を受け取った時に呼ばれる
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true;
    }
    
    func configureCredential()
    {
    // - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
    // などから呼べばよし
    
        var creds = NSURLCredential(user: "hoge", password: "fuga", persistence: NSURLCredentialPersistence.ForSession)
        var store = NSURLCredentialStorage.sharedCredentialStorage()
        
        var protectionSpace  = NSURLProtectionSpace( host:"google.com", port: 80, `protocol`: "http", realm: "Please enter your ID and password", authenticationMethod: NSURLAuthenticationMethodDefault )
    
        store.setCredential(creds, forProtectionSpace: protectionSpace)
    }}
