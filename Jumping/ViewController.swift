//
//  ViewController.swift
//  Jumping
//
//  Created by Stefan Walkner on 12.08.19.
//  Copyright © 2019 arkulpa GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var dataArray = (1...64).map { "\($0)" }

    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.refreshControl = UIRefreshControl(frame: .zero)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)

        cell.textLabel?.text = dataArray[indexPath.row]

        return cell
    }
}
