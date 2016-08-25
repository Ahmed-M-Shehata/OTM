//
//  ParseConstants.swift
//  OTM
//
//  Created by Ahmed Shehata on 8/24/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

extension ParseClient {
    
    // MARK: - Constants
    
    struct Constants {
        
        /* URLs */
        static let ApiScheme = "https"
        static let ApiHost = "parse.udacity.com"
        static let ApiPath = "/parse/classes/StudentLocation"
    }
    
    
    // MARK: - Methods
    
    struct Methods {
        static let Session = "/session"
        static let Users = "/users/"
    }
    
    
    // MARK: - Parameter Keys
    
    struct ParameterKeys {
        static let Limit = "limit"
        static let Order = "order"
    }
    
    
    // MARK: - JSON Body Keys
    
    struct JSONBodyKeys {
        static let UniqueKey = "uniqueKey"
        static let FirstName = "firstName"
        static let LastName = "lastName"
        static let MapString = "mapString"
        static let MediaURL = "mediaURL"
        static let Latitude = "latitude"
        static let Longitude = "longitude"
    }
    
    
    // MARK: - Header Values
    
    struct HeaderValues {
        static let ApplicationID = "QrX47CA9cyuGewLdsL7o5Eb8iug6Em8ye0dnAbIr"
        static let ApiKey = "QuWThTdiRmTux3YaDseUSEpUKo7aBYM737yKd4gY"
    }
    
}