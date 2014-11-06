//
//  MainMenuViewController.swift
//  SwiftWithUIKit
//
//  Created by tohrinagi on 2014/10/09.
//  Copyright (c) 2014 tohrinagi. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var itemName = ["Practice1","Plactice2"]

    override func viewDidLoad() {
        super.viewDidLoad()

        var myTableView =
            UITableView(frame: self.view.bounds,
                        style: UITableViewStyle.Plain);

        myTableView.delegate = self;
        myTableView.dataSource = self;

        self.view.addSubview(myTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell( style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        cell.textLabel.text = itemName[indexPath.row]
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemName.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        println( indexPath.row )
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(Practice1ViewController(), animated: true)
        case 1:
            var viewCon = Practice2ViewController()
            viewCon.configureCredential()
            self.navigationController?.pushViewController(viewCon, animated: true)
        default:
            break
        }
    }
}