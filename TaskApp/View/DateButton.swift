//
//  DateButton.swift
//  TaskApp
//
//  Created by Florian Beaumont on 10/11/20.
//

import SwiftUI

struct DateButton: View {
    
    var title: String
    
    @ObservedObject var homeData: HomeViewModel
    
    var body: some View {
        Button(action: {homeData.updateDate(value: title)}, label: {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(homeData.checkDate() == title ? .white : .gray)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(
                    homeData.checkDate() == title ?
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing) :
                    LinearGradient(gradient: Gradient(colors: [Color.white]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(6)
        })
    }
}
