//
//  CardView.swift
//  MVVM Design Pattern
//
//  Created by Anjali Kevadiya on 6/17/20.
//  Copyright © 2020 Anjali Kevadiya. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CardView: View {
    
    var userAccountDetail: UserAccount
    
    var body: some View {
        
        HStack(spacing: 15) {
            
            AnimatedImage(url: URL(string: userAccountDetail.avatar_url))
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(self.userAccountDetail.login)
                Text("\(self.userAccountDetail.id)")
                    .font(.caption)
            }
            Spacer(minLength: 0)
        }
        .padding(.horizontal)
        .padding(.top)
    }
}
