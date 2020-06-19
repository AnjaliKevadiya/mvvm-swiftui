//
//  HomeView.swift
//  MVVM Design Pattern
//
//  Created by Anjali Kevadiya on 6/17/20.
//  Copyright © 2020 Anjali Kevadiya. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var users = FetchUserAccounts()
    
    var body: some View {
        
        ZStack {
            if self.users.userAccounts.isEmpty {
                
                IndicatorView()
                
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing : 0){
                        
                        ForEach(self.users.userAccounts) { user in
                             CardView(userAccountDetail: user)
                        }
                    }
                }
            }
        }
        .onAppear {
            self.users.fetchAllUsers()
        }
        .navigationBarTitle("Home")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
