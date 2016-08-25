//
//  GCDBlackBox.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation

/* Global GCD function to update main queue */
func performUIUpdatesOnMain(updates: () -> Void) {
    dispatch_async(dispatch_get_main_queue()) {
        updates()
    }
}