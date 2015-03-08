//
//  LoginRequester.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/7/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

class LoginRequester {
        
    class func login(delegate: LoginDelegate, username: String, password: String) {
        let url = NSURL(string: Constants.Url.LOGIN_URL)!
        let session = NSURLSession.sharedSession()
        let networkTask = session.dataTaskWithURL(url, completionHandler : { data, response, error -> Void in
            var err: NSError?
            var json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as [String:String]
            for (key,value) in json {
                println("\(key) -> \(value)")
            }
            // TODO serialize into Objects and pass back to callback
            
        })
        networkTask.resume()

    }
    
}