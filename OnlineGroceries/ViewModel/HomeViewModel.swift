//
//  SwiftUIView.swift
//  OnlineGroceries
//
//  Created by student on 04/02/25.
//

import SwiftUI

class HomeViewModel: ObservableObject
{
    static var shared: HomeViewModel = HomeViewModel()
    
    @Published var selectTab: Int = 0
    @Published var txtSearch: String = ""
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    @Published var offerArr: [ProductModel] = []
    @Published var bestArr: [ProductModel] = []
    @Published var listArr: [ProductModel] = []
    @Published var typeArr: [TypeModel] = []
    
    
    init() {
        serviceCallList()
    }
    
    
    
    //MARK: ServiceCall
    
    /*func serviceCallList(){
        ServiceCall.post(parameter: [:], path: Globs.SV_HOME, isToken: true ) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    
                    if let payloadObj = response.value(forKey: KKey.payload) as? NSDictionary {
                        self.offerArr = (payloadObj.value(forKey: "offer_list") as? NSArray ?? []).map({ obj in
                            
                            return ProductModel(dict: obj as? NSDictionary ?? [:])
                        })
                        
                        self.bestArr = (payloadObj.value(forKey: "best_sell_list") as? NSArray ?? []).map({ obj in
                            
                            return ProductModel(dict: obj as? NSDictionary ?? [:])
                        })
                        
                        self.listArr = (payloadObj.value(forKey: "list") as? NSArray ?? []).map({ obj in
                            
                            return ProductModel(dict: obj as? NSDictionary ?? [:])
                        })
                        
                        self.typeArr = (payloadObj.value(forKey: "type_list") as? NSArray ?? []).map({ obj in
                            
                            return TypeModel(dict: obj as? NSDictionary ?? [:])
                        })
                    }
                    
                    
                }else{
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }
    }*/
    func serviceCallList() {
        // Call the service to fetch data (POST request)
        ServiceCall.post(parameter: [:], path: Globs.SV_HOME, success: { responseObj in
            // Handle the successful response (ensure responseObj is of the correct type)
            if let response = responseObj as? NSDictionary {
                // Check if the status is "1" (indicating success)
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    // Handle the response data (payload)
                    if let payload = response.value(forKey: KKey.payload) as? NSDictionary {
                        print("Payload received: \(payload)")
                        // Process the payload data as required
                    }
                } else {
                    // Handle error if status is not "1"
                    let errorMessage = response.value(forKey: KKey.message) as? String ?? "Unknown error"
                    print("Error: \(errorMessage)")
                    // You can set an error message to show in the UI
                    self.errorMessage = errorMessage
                    self.showError = true
                }
            }
        }, failure: { error in
            // Handle failure for network or other errors
            print("Request failed: \(error?.localizedDescription ?? "Unknown error")")
            self.errorMessage = error?.localizedDescription ?? "Unknown error"
            self.showError = true
        })
    }


    
}
