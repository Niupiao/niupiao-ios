//
//  ApiKey.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/7/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

class ApiKey {
    
    var accessToken : String
    var expiresAt : String
    
    init(accessToken: String, expiresAt: String) {
        self.accessToken = accessToken
        self.expiresAt = expiresAt
    }
    
}