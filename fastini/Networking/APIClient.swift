//
//  APIClient.swift
//  Networking
//
//  Created by Alaeddine Messaoudi on 14/12/2017.
//  Copyright © 2017 Alaeddine Me. All rights reserved.
//

import Alamofire

class APIClient {
    
    @discardableResult
    private static func performRequest<T:Decodable>(route:APIRouter, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T,Error>)->Void) -> DataRequest {
        return AF.request(route)
                        .responseDecodable (decoder: decoder){
                            
                            (response: DataResponse<T>) in
                            
                            completion(response.result)
        }
    }
    
    
    
    @discardableResult
    private static func performRequestSimple(route:APIRouter, completion: @escaping (Result<String, Error>)->Void) -> DataRequest {
        return AF.request(route)
            .responseString(encoding: String.Encoding.utf8) {
                
                (response) in
                
                completion(response.result)
                
        }
    }
    
    //------------------------
    
    static func insertOrder(id_user: String, address: String, totle_price:String, id_product:[String], completion:@escaping (Result<String,Error>)->Void) {
        
        performRequestSimple(route: APIRouter.insertOrder(id_user: id_user, address: address, totle_price: totle_price, id_product: id_product), completion: completion)
        
    }

    
}

