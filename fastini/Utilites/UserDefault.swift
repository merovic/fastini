//
//  UserDefult.swift
//  Eschoola
//
//  Created by Admin on 6/6/19.
//  Copyright © 2019 amirahmed. All rights reserved.
//

import Foundation

struct UserDefault {

   static let token = "token"
   static let userName = "username"
   //static let email = "email"
   static let firebaseToken = "firebase_token"
   static let IsNotificationOff = "is_notification_off"
   static let IsMile = "is_mile"

    //-------------------------
    
    static let isLogedIn = "isLogedIn"
    
    static let type = "Type"
    static let user = "User"
    static let investor = "Investor"
    
    //-------------------------
    
    // Common Info for User and Investor
    static let id = "id"
    static let name = "Name"
    static let email = "Email"
    static let password = "Password"
    static let age = "Age"
    static let gender = "Gender"
    static let work = "Work"
    static let mobile = "Mobile"
    static let images = "Images"
    
    //Info for User Only
    static let identification = "Identification"
    static let account_statement = "Account_statement"
    static let number_rate = "number_rate"
    static let number_star = "number_star"
    static let final_rate = "final_rate"
    
    
    //----------------
    
    static func setID(_ id:Int){
        UserDefaults.standard.set(id, forKey: self.id)
    }
    
    static func getID() -> Int {
        return  UserDefaults.standard.integer(forKey: self.id)
    }
    
    static func setName(_ name:String){
        UserDefaults.standard.set(name, forKey: self.name)
    }
    
    static func getName() -> String {
        return  UserDefaults.standard.string(forKey: self.name) ?? ""
    }
    
    static func setEmail(_ email:String){
        UserDefaults.standard.set(email, forKey: self.email)
    }
    
    static func getEmail() -> String {
        return  UserDefaults.standard.string(forKey: self.email) ?? ""
    }
    
    static func setPassword(_ pass:String){
        UserDefaults.standard.set(pass, forKey: self.password)
    }
    
    static func getPassword() -> String {
        return  UserDefaults.standard.string(forKey: self.password) ?? ""
    }
    
    static func setAge(_ age:String){
        UserDefaults.standard.set(age, forKey: self.age)
    }
    
    static func getAge() -> String {
        return  UserDefaults.standard.string(forKey: self.age) ?? ""
    }
    
    static func setGender(_ gender:String){
        UserDefaults.standard.set(gender, forKey: self.gender)
    }
    
    static func getGender() -> String {
        return  UserDefaults.standard.string(forKey: self.gender) ?? ""
    }
    
    static func setWork(_ work:String){
        UserDefaults.standard.set(work, forKey: self.work)
    }
    
    static func getWork() -> String {
        return  UserDefaults.standard.string(forKey: self.work) ?? ""
    }
    
    static func setMobile(_ mobile:String){
        UserDefaults.standard.set(mobile, forKey: self.mobile)
    }
    
    static func getMobile() -> String {
        return  UserDefaults.standard.string(forKey: self.mobile) ?? ""
    }
    
    static func setImage(_ image:String){
        UserDefaults.standard.set(image, forKey: self.images)
    }
    
    static func getImage() -> String {
        return  UserDefaults.standard.string(forKey: self.images) ?? ""
    }
    
    static func setIdentification(_ identification:String){
        UserDefaults.standard.set(identification, forKey: self.identification)
    }
    
    static func getIdentification() -> String {
        return  UserDefaults.standard.string(forKey: self.identification) ?? ""
    }
    
    static func setAccount_statement(_ account:String){
        UserDefaults.standard.set(account, forKey: self.account_statement)
    }
    
    static func getAccount_statement() -> String {
        return  UserDefaults.standard.string(forKey: self.account_statement) ?? ""
    }
    
    static func setNumber_rate(_ number:String){
        UserDefaults.standard.set(number, forKey: self.number_rate)
    }
    
    static func getNumber_rate() -> String {
        return  UserDefaults.standard.string(forKey: self.number_rate) ?? ""
    }
    
    static func setNumber_star(_ number:String){
        UserDefaults.standard.set(number, forKey: self.number_star)
    }
    
    static func getNumber_star() -> String {
        return  UserDefaults.standard.string(forKey: self.number_star) ?? ""
    }
    
    static func setFinal_rate(_ rate:String){
        UserDefaults.standard.set(rate, forKey: self.final_rate)
    }
    
    static func getFinal_rate() -> String {
        return  UserDefaults.standard.string(forKey: self.final_rate) ?? ""
    }
    
    //----------------
    
    
    static func isUser(){
        UserDefaults.standard.set(self.user, forKey: self.type)
    }
    
    static func isInvestor(){
        UserDefaults.standard.set(self.investor, forKey: self.type)
    }

    static func getType() -> String {
        return  UserDefaults.standard.string(forKey: self.type) ?? ""
    }
    
    static func setLogin(){
        UserDefaults.standard.set("True", forKey: self.isLogedIn)
    }
    
    static func setLogout(){
        UserDefaults.standard.set("False", forKey: self.isLogedIn)
    }
    
    static func isLoggedIn() -> Bool {
        if(UserDefaults.standard.string(forKey: self.isLogedIn) == "True")
        {
            return true
        }else
        {
            return false
        }
        
    }

    //--------------------------
   static func setToken(_ token:String){
       UserDefaults.standard.set(token, forKey: self.token)
   }
   
   static func getToken() -> String {
      return  UserDefaults.standard.string(forKey: self.token) ?? ""
   }
   
   static func isLogin() -> Bool {
      return UserDefaults.standard.object(forKey: self.token) != nil && UserDefaults.standard.string(forKey: self.token) != ""
   }

   
   static func save(_ object:String ,_ key:String) {
       UserDefaults.standard.set( object,forKey: key)
   }
   
   static func retrive(_ key:String)->String? {
      return  UserDefaults.standard.string(forKey: key)
   }
   
   static func saveBool(_ object:Bool ,_ key:String) {
      UserDefaults.standard.set( object,forKey: key)
   }
   
   static func retriveBool(_ key:String)->Bool {
      return  UserDefaults.standard.bool(forKey: key)
   }
}
