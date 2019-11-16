//
//  APIRouter.swift
//  Networking
//
//  Created by Alaeddine Messaoudi on 26/11/2017.
//  Copyright © 2017 Alaeddine Me. All rights reserved.
//

import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case login(mail:String, password:String)
    case registration(name:String, mail:String, phone:String, password:String)
    case insertOrder(id_user: String, address: String, totle_price:String, id_product:[String])
    
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .login,.registration:
            return .post
        case .insertOrder:
            return .get
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .login:
            return "user/login/549834453/25598"
        case .registration:
            return "user/register/549834453/25598"
        case .insertOrder:
            return "/insert_orders"
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
            
        case .login(let mail,  let password):
            return [K.APIParameterKeyLogin.email: mail, K.APIParameterKeyLogin.password: password]
            
        case .registration(let name, let mail, let password, let phone):
            return [K.APIParameterKeyRegistration.name: name,
                   K.APIParameterKeyRegistration.mail: mail,
                   K.APIParameterKeyRegistration.password: password,
                   K.APIParameterKeyRegistration.phone: phone]
        case .insertOrder(let id_user, let address, let totle_price, let id_product):
            return [K.InsertOrder.id_user: id_user, K.InsertOrder.address: address, K.InsertOrder.totle_price: totle_price, K.InsertOrder.id_product: id_product]
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        
        let url = try K.ProductionServer.baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        
        // Parameters
        var encodedURLRequest:URLRequest? = nil
        
        var Vparameters: [String: Any]
        
        if(parameters == nil)
        {
            encodedURLRequest = try URLEncoding.queryString.encode(urlRequest, with: nil)
        }else
        {
            Vparameters = parameters!
            encodedURLRequest = try URLEncoding.queryString.encode(urlRequest, with: Vparameters)
        }

        
        return encodedURLRequest!
        
        }
    }

