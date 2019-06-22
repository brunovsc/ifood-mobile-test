//
//  TweetListRequest.swift
//  TwitterAnalyzer
//
//  Created by Bruno Vieira on 19/06/19.
//  Copyright © 2019 Bruno Vieira. All rights reserved.
//

import UIKit

struct TweetListRequest: RequestProtocol {
    
    let accessToken: String
    let screenName: String
    
    var endpoint: String {
        return "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=\(screenName)&tweet_mode=extended"
    }
    
    var method: HttpMethod {
        return HttpMethod.GET
    }
    
    var headerFields: [String : String]? {
        return ["Authorization": "Bearer \(accessToken)"]
    }
    
    var body: [String : Any]? {
        return nil
    }
}
