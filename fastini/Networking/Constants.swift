//
//  Constants.swift
//  Networking
//
//  Created by Alaeddine Messaoudi on 26/11/2017.
//  Copyright © 2017 Alaeddine Me. All rights reserved.
//

import Foundation

struct K {
    
    struct ProductionServer {

        static let baseURL = "http://fastini.alosboiya.com.sa/store_app.asmx"
    }
    
    
    struct APIParameterKeyLogin {
        static let email = "email"
        static let password = "pass"
    }
   
    
    struct APIParameterKeyRegistration {
        static let name = "name"
        static let mail = "mail"
        static let password = "password"
        static let phone = "phone"
    }
    
    struct InsertOrder {
        static let id_user = "id_user"
        static let address = "address"
        static let totle_price = "totle_price"
        static let id_product = "id_product"
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/x-www-form-urlencoded"
}
