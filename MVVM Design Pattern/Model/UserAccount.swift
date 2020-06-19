//
//  UserAccount.swift
//  MVVM Design Pattern
//
//  Created by Anjali Kevadiya on 6/17/20.
//  Copyright © 2020 Anjali Kevadiya. All rights reserved.
//

import Foundation

struct UserAccount: Identifiable, Decodable {
    
    var id : Int
    var login : String
    var avatar_url : String
}
