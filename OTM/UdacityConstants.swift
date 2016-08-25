//
//  UdacityConstants.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

extension UdacityClient {
    
    //MARK:  - Constants
    
    struct Constants {
        
        /* URLs */
        static let ApiScheme = "https"
        static let ApiHost = "www.udacity.com"
        static let ApiPath = "/api"
    }
    
    
    // MARK: - Methods
    
    struct Methods {
        static let Session = "/session"
        static let Users = "/users/"
    }
    
    
    // MARK:  - JSON Body Keys
    
    struct JSONBodyKeys {
        static let FacebookMobile = "facebook_mobile"
        static let AccessToken = "access_token"
        static let Udacity = "udacity"
        static let Username = "username"
        static let Password = "password"
    }
    
}