//
//  LoginRequester.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/7/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

protocol LoginDelegate {
    func didLogin(user: User, apiKey: ApiKey)
}

class LoginRequester {
        
    class func loginWithDelegate(delegate: LoginDelegate, username: String, password: String) {
        
        // the login endpoint
        let url = NSURL(string: Constants.Url.LOGIN_URL)!
        
        // a session
        let session = NSURLSession.sharedSession()
        
        // the login task
        let networkTask = session.dataTaskWithURL(url, completionHandler : { data, response, error -> Void in
            var err: NSError?
            var json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! [String:String]
            for (key,value) in json {
                println("\(key) -> \(value)")
            }
            // TODO serialize into Objects and pass back to callback
            
        })
        networkTask.resume()

    }
    
}