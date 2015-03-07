//
//  EventsRequester.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/7/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

class EventsRequester {
    class func loadEvents() {
        let url = Constants.Url.EVENTS_URL
        NSLog("#loadEvents")
    }
    
    func getJSON(url: String) -> NSData? {
        // TODO Roll our own Gson/Volley library
        let urlPath = "http://api.topcoder.com/v2/challenges?pageSize=2"
        let url: NSURL = NSURL(string: urlPath)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url, completionHandler: {data, response, error -> Void in
            
            if error != nil {
                // If there is an error in the web request, print it to the console
                println(error.localizedDescription)
            }
            
            var err: NSError?
            var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
            if err != nil {
                // If there is an error parsing JSON, print it to the console
                println("JSON Error \(err!.localizedDescription)")
            }
            
            let json = JSONValue(jsonResult)
            let count: Int? = json["data"].array?.count
            println("found \(count!) challenges")
            
            if let ct = count {
                for index in 0...ct-1 {
                    // println(json["data"][index]["challengeName"].string!)
                    if let name = json["data"][index]["challengeName"].string {
                        println(name)
                    }
                    
                }
            }
        })
        task.resume()
        
        return nil
    }
}