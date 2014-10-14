//
//  Practice1View.swift
//  SwiftWithUIKit
//
//  Created by tohrinagi on 2014/10/14.
//  Copyright (c) 2014 tohrinagi. All rights reserved.
//

import UIKit

class Practice1View: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.whiteColor()
        self.addSubview(createUILabel(CGRect(origin: self.center, size: CGSize(width: 100, height: 100))))
        //self.addSubview(createUIProgressView(CGRect(origin: self.center, size: CGSize(width: 100, height: 100))))
    }
    
    ///UILabelを作成する
    func createUILabel(frame: CGRect) -> UILabel {
        //UILabelの作成 コンストラクタには座標を設定する
        var label = UILabel(frame: frame)
        //背景色の設定
        label.backgroundColor = UIColor.redColor()
        //フォントの設定
        label.font = UIFont(name: "AppleGothic", size: 12)
        //ラベルに表示する文字
        label.text = "test"
        //テキストアライメント
        label.textAlignment = NSTextAlignment.Center
        //テキスト表示可能行数
        label.numberOfLines = 1
        //テキストが表示領域を超えた場合の処理 trueだと縮小表示をする falseだと表示しない
        label.adjustsFontSizeToFitWidth = true
        //テキスト色
        label.textColor = UIColor.blackColor()
        //タッチ検知をするか trueならばおこなう
        label.userInteractionEnabled = false;
        return label
    }
    
    ///UIProgressViewを作成する
    func createUIProgressView(frame: CGRect) -> UIProgressView {
        //UIProgressViewの作成 コンストラクタにはスタイルを設定する
        var progress = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
        //位置を設定する
        progress.frame = frame
        //progress.progress = progressValue
        return progress
    }
}
