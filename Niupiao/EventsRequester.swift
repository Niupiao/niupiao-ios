//
//  EventsRequester.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/7/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

protocol EventsDelegate {
    func didLoadEvents(events: [Event])
}

class EventsRequester {
    
    class func eventsLoaded(data: NSData!, response: NSURLResponse!, error: NSError!) {}
    
    class func loadEvents(delegate: EventsDelegate) {
        let url = NSURL(string: Constants.Url.EVENTS_URL)!
        let session = NSURLSession.sharedSession()
        let networkTask = session.dataTaskWithURL(url, completionHandler : { data, response, error -> Void in
            var err: NSError?
            var theJSON = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! [AnyObject]
            // TODO serialize into Objects and pass back to callback
        })
        networkTask.resume()
        NSLog("#loadEvents")
    }
    
}