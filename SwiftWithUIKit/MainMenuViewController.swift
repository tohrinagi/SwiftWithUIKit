//
//  MainMenuViewController.swift
//  SwiftWithUIKit
//
//  Created by tohrinagi on 2014/10/09.
//  Copyright (c) 2014 tohrinagi. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var myTableView =
            UITableView(frame: self.view.bounds,
                        style: UITableViewStyle.Plain);

        myTableView.delegate = self;
        myTableView.dataSource = self;

        self.view.addSubview(myTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell( style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
}