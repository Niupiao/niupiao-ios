//
//  Ticket.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/6/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

class Ticket {
    
    var id: Int
    var eventId: Int
    var event: Event?
    var userId: Int
    var price: Int
    var status: String
    
    init(id: Int, eventId: Int, event: Event, userId: Int, price: Int, status: String) {
        self.id = id
        self.eventId = eventId
        self.event = event
        self.userId = userId
        self.price = price
        self.status = status
    }
    
}