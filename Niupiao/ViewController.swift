//
//  ViewController.swift
//  Niupiao
//
//  Created by Kevin Chen on 3/6/15.
//  Copyright (c) 2015 Niupiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginDelegate {
    
    func didLogin(user: User, apiKey: ApiKey) {
        // TODO saveStuff()
    }
    
    func saveStuff(username: String, password: NSString, rememberMe: Bool, accessToken: NSString) {

        let preferences = NSUserDefaults.standardUserDefaults()
        
        preferences.setObject(username, forKey: Constants.UserDefaultKeys.USERNAME)
        preferences.setObject(password, forKey: Constants.UserDefaultKeys.PASSWORD)
        preferences.setObject(rememberMe, forKey: Constants.UserDefaultKeys.REMEMBER_ME)
        preferences.setObject(accessToken, forKey: Constants.UserDefaultKeys.ACCESS_TOKEN)
        
        //  Save to disk
        let didSave = preferences.synchronize()
        
        if !didSave {
            //  Couldn't save (I've never seen this happen in real world testing)
            println("Couldn't save login credentials -- BUG")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        LoginRequester.login(self, username: "kmc3", password: "foobar")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

