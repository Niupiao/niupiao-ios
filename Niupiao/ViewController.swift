//
//  ViewController.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/6/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        LoginRequester.login("kmc3", password: "foobar")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

