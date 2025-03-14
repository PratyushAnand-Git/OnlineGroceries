//import SwiftUI
//import Foundation
//
//class ServiceCall {
//    static func post(parameter: [String: Any], path: String, success: @escaping (Any) -> Void, failure: @escaping (Error?) -> Void) {
//        guard let url = URL(string: path) else {
//            failure(nil)
//            return
//        }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = try? JSONSerialization.data(withJSONObject: parameter, options: [])
//        
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            if let error = error {
//                failure(error)
//                return
//            }
//            
//            guard let data = data else {
//                failure(nil)
//                return
//            }
//            
//            do {
//                let responseObj = try JSONSerialization.jsonObject(with: data, options: [])
//                success(responseObj)
//            } catch {
//                failure(error)
//            }
//        }
//        
//        task.resume()
//    }
//}
//
//
//class MainViewModel: ObservableObject {
//    static var shared: MainViewModel = MainViewModel()
//    
//    @Published var txtUsername: String = ""
//    @Published var txtEmail: String = ""
//    @Published var txtPassword: String = ""
//    @Published var isShowPassword: Bool = false
//    
//    @Published var showError = false
//    @Published var errorMessage = ""
//    @Published var isUserLogin: Bool = false
//    @Published var userObj: UserModel = UserModel(dict: [:])
//    
//    init() {
//        
//        
//        if( Utils.UDValueBool(key: Globs.userLogin) ) {
//            // User Login
//            self.setUserData(uDict: Utils.UDValue(key: Globs.userPayload) as? NSDictionary ?? [:] )
//        }else{
//            // User Not Login
//        }
//        
//        #if DEBUG
//        txtUsername = "user4"
//        txtEmail = "test@gmail.com"
//        txtPassword = "123456"
//        #endif
//        
//    }
//    
//    func logout(){
//        Utils.UDSET(data: false, key: Globs.userLogin)
//        isUserLogin = false
//    }
//    
//    //MARK: ServiceCall
//    func serviceCallLogin(){
//        
//        
//        if(!txtEmail.isValidEmail) {
//            self.errorMessage = "please enter valid email address"
//            self.showError = true
//            return
//        }
//        
//        if(txtPassword.isEmpty) {
//            self.errorMessage = "please enter valid password"
//            self.showError = true
//            return
//        }
//        
//        ServiceCall.post(parameter: ["email": txtEmail, "password": txtPassword, "dervice_token":"" ], path: Globs.SV_LOGIN) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    
//                    
//                    
//                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
//                    
//                    
//                }else{
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self.errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }
//
//    }
//    
//    func serviceCallSignUp(){
//        
//        if(txtUsername.isEmpty) {
//            self.errorMessage = "please enter valid username"
//            self.showError = true
//            return
//        }
//        
//        
//        if(!txtEmail.isValidEmail) {
//            self.errorMessage = "please enter valid email address"
//            self.showError = true
//            return
//        }
//        
//        if(txtPassword.isEmpty) {
//            self.errorMessage = "please enter valid password"
//            self.showError = true
//            return
//        }
//        
//        ServiceCall.post(parameter: [ "username": txtUsername , "email": txtEmail, "password": txtPassword, "dervice_token":"" ], path: Globs.SV_SIGN_UP) { responseObj in
//            if let response = responseObj as? NSDictionary {
//                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
//                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
//                }else{
//                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
//                    self.showError = true
//                }
//            }
//        } failure: { error in
//            self.errorMessage = error?.localizedDescription ?? "Fail"
//            self.showError = true
//        }
//
//    }
//    
//    func setUserData(uDict: NSDictionary) {
//        
//        
//        Utils.UDSET(data: uDict, key: Globs.userPayload)
//        Utils.UDSET(data: true, key: Globs.userLogin)
//        self.userObj = UserModel(dict: uDict)
//        self.isUserLogin = true
//        
//        self.txtUsername = ""
//        self.txtEmail = ""
//        self.txtPassword = ""
//        self.isShowPassword = false
//    }
//    
//}
import SwiftUI
import UIKit

class ServiceCall {
    
    class func post(parameter: NSDictionary, path: String, isToken: Bool = false, withSuccess: @escaping ( (_ responseObj: AnyObject?) ->() ), failure: @escaping ( (_ error: Error?) ->() ) ) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            
            
            var parameterData = NSMutableData()
            let dictKey = parameter.allKeys as! [String]
            
            var i=0;
            
            for dictKey in dictKey {
                if let values = parameter.value(forKey: dictKey) as? String{
                    parameterData.append(String.init(format: "%@%@=%@", i==0 ? "" : "&" ,dictKey, values.replacingOccurrences(of: "+", with: "%2B")).data(using: String.Encoding.utf8)!)
                }else{
                    parameterData.append(String.init(format: "%@%@=%@", i==0 ? "" : "&" ,dictKey, parameter.value(forKey: dictKey) as! CVarArg) .data(using: String.Encoding.utf8)!)
                }
                
                i += 1
            }
            
            
            var request = URLRequest(url: URL(string: path)!,timeoutInterval: 20)
            request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

            if(isToken) {
                
//                #if DEBUG
//                request.addValue( "HFYsmcPickQlPmWMNUEZ" , forHTTPHeaderField: "access_token")
//                #else
                //request.addValue(MainViewModel.shared.userObj.authToken , forHTTPHeaderField: "access_token")
//                #endif
                
                               
            }
            request.httpMethod = "POST"
            request.httpBody = parameterData as Data

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
              
                if let error = error {
                    DispatchQueue.main.async {
                        failure(error)
                    }
                }else{
                    
                    if let data = data {
                        do {
                            let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary
                            
                            debugPrint("response: " , jsonDictionary )
                            
                            DispatchQueue.main.async {
                                withSuccess(jsonDictionary)
                            }
                            
                            
                        }
                        catch {
                            DispatchQueue.main.async {
                                failure(error)
                            }
                        }
                    }
                   
                
                }
                
              guard let data = data else {
                
                return
              }
              
            }

            task.resume()
        }
        
    }
    

    
}
