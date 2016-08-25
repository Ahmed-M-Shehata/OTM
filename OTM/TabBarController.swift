//
//  TabBarController.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    @IBAction func logout(sender: UIBarButtonItem) {
        
        
        UdacityClient.sharedInstance().logoutUdacity() { (errorString) in
            if errorString != nil {
                print(errorString!)
            }
            
            performUIUpdatesOnMain {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
    }
    
}
