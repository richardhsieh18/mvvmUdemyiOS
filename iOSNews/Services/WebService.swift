//
//  WebService.swift
//  iOSNews
//
//  Created by chang on 2019/7/22.
//  Copyright © 2019 chang. All rights reserved.
//

import Foundation

class WebService {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data) //model裡description有nil要設safe才可以解析成功
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                print(articleList?.articles)
                
            }
            
            
        }.resume()
        
    }
}
