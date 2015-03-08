//
//  EventsDelegate.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/7/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import Foundation

protocol EventsDelegate {
    func didLoadEvents(events: [Event])
}