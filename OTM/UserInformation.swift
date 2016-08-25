//
//  UserInformation.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import MapKit

/* Struct for storing the user's information */
struct UserInformation {
    
    var firstName: String?
    var lastName: String?
    var userID: String?
    var userEmail: String?
    var userPassword: String?
    var mapString: String?
    var mediaURL: String?
    var userPointAnnotation: MKPointAnnotation?
    
    /* Static variable so the user's information  can be accessed throughout the app */
    static var user = UserInformation()
    
}

