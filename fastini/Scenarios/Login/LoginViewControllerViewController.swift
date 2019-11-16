//
//  LoginViewControllerViewController.swift
//  fastini
//
//  Created by Apple on 10/27/19.
//  Copyright © 2019 amirahmed. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        again()
        //ass()
        //ada()
    }
    
    
    func again()
    {
        
        
        let URL_GET_DATA = "http://fastini.alosboiya.com.sa/store_app.asmx/insert_orders?id_user=3&address=finaltry&totle_price=3500"
        
        var prelink:String
        
        prelink = ""
        
        var values = [String]()
        
        values.append("1")
        values.append("2")
        values.append("11")
        values.append("3")
        
        for num in values {
        
            prelink = prelink + "&id_product=" + num
        }
        
        
        
        let finalLink = URL_GET_DATA + prelink
        
        print(finalLink)
        
        //fetching data from web api
        AF.request(finalLink).responseString { response in
            
            print(response)
    

        }
        
        
    }
    
    func ada()
    {
        
    
        
        
        
        let url = "http://fastini.alosboiya.com.sa/store_app.asmx/insert_orders?"
        
        var values = [String]()
        
        values.append("1")
        values.append("2")
        values.append("11")
        
                  // let values = ["1","2"]
                         
                         let parameters = [
                             "id_user": "3",
                             "address": "ddg",
                             "totle_price": "860",
                             "id_product": values
                             ] as [String : Any]
                  
        
        AF.request(url, method: .post, parameters: parameters).responseJSON { (responseObject) -> Void in

                print(responseObject)
            

        }
        
        
        
       //------
        
        
        
    }
    

    func ass()
    {
        
   
               DispatchQueue.global(qos: .userInteractive).async {
                   // Test Login request
                APIClient.insertOrder(id_user: "3", address: "iOS", totle_price: "650", id_product: ["1","2","11"], completion: { result in
                       switch result {
                       case .success(let response):
                           DispatchQueue.main.async {
                               
                            print(response)
                            

                           }
                       case .failure(let error):
                           print(error.localizedDescription)
                           

                           
                       }
                   }
                   
               )}
        
        
    }

}
