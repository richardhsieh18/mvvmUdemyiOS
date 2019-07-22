//
//  NewsListTableViewController.swift
//  iOSNews
//
//  Created by chang on 2019/7/22.
//  Copyright © 2019 chang. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
