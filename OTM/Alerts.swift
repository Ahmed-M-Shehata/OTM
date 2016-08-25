//
//  Alerts.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

/* Global function that takes in a string and returns a UIAlertController */
func alert(message: String) -> UIAlertController {
    let alert = UIAlertController(title: nil, message: message, preferredStyle: .Alert)
    let action = UIAlertAction(title: "Dismiss", style: .Default, handler: nil)
    alert.addAction(action)
    return alert
}