//
//  FetchUserAccounts.swift
//  MVVM Design Pattern
//
//  Created by Anjali Kevadiya on 6/17/20.
//  Copyright © 2020 Anjali Kevadiya. All rights reserved.
//

import Foundation
import SwiftUI

class FetchUserAccounts: ObservableObject {
    
    @Published var userAccounts: [UserAccount] = []
    
    let url = "https://api.github.com/users/hadley/orgs"
    
    func fetchAllUsers() {
        
        let urlSession = URLSession(configuration: .default)
        
        urlSession.dataTask(with: URL(string: url)!) { (data, _, _) in
            
            guard let users = data else {
                return
            }
            do{
                let decoder = try JSONDecoder().decode([UserAccount].self, from: users)
                
                //print(decoder)
                
                DispatchQueue.main.sync {
                    self.userAccounts = decoder
                }
                
            } catch {
                print("\(error)")
            }
        }.resume()
    }
}
