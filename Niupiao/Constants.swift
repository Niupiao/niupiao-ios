//
//  Constants.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/6/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

class Constants {
    
    struct Url {
        static let BASE_URL = "https://niupiao-rails.herokuapp.com"
        static let LOGIN_URL = BASE_URL + "/login.json"
        static let EVENTS_URL = BASE_URL + "/events.json"
        static let TICKETS_URL = BASE_URL + "/me/tickets.json"
    }
    
    struct UserDefaultKeys {
        static let USERNAME = "username"
        static let PASSWORD = "password"
        static let REMEMBER_ME = "remember_me"
        static let ACCESS_TOKEN = "access_token"
    }
    
}