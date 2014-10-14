//
//  Practice1ViewController.swift
//  SwiftWithUIKit
//
//  Created by tohrinagi on 2014/10/12.
//  Copyright (c) 2014年 tohrinagi. All rights reserved.
//

import UIKit

///Practice1 UIViewへの他のViewの追加
class Practice1ViewController: UIViewController {
    
    ///インスタンス化された時1回だけ呼ばれる Viewの作成はここでするべき
    override func viewDidLoad() {
        self.view = Practice1View()
    }
    
    ///メモリ警告を受け取った時に呼ばれる
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}