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
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=tw&apiKey=bc0374957d234e35b24cb86bf279b3c6")!
        WebService().getArticles(url: url) { _ in
            
        }
    }
}
