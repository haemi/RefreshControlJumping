//
//  ViewController.swift
//  Jumping
//
//  Created by Stefan Walkner on 12.08.19.
//  Copyright © 2019 arkulpa GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.refreshControl = UIRefreshControl(frame: .zero)
    }


}
