//
//  Event.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/6/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

class Event {
    var id: Int
    var name: String
    var organizer: String
    var date: String
    var location: String
    var description: String
    var link: String
    var imagePath: String
    var totalTickets: Int
    var ticketsSold: Int
    var tickets: [Ticket]?

    init(id: Int, name: String, organizer: String, date: String, location: String, description: String, link: String, imagePath: String, totalTickets: Int, ticketsSold: Int) {
        self.id = id
        self.name = name
        self.organizer = organizer
        self.date = date
        self.location = location
        self.description = description
        self.link = link
        self.imagePath = imagePath
        self.totalTickets = totalTickets
        self.ticketsSold = ticketsSold
    }
}