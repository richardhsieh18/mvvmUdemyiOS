//
//  Article.swift
//  iOSNews
//
//  Created by chang on 2019/7/22.
//  Copyright © 2019 chang. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
