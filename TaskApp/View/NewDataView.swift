//
//  NewDataView.swift
//  TaskApp
//
//  Created by Florian Beaumont on 10/11/20.
//

import SwiftUI

struct NewDataView: View {
    
    @ObservedObject var homeData: HomeViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Add New Task")
                    .font(.system(size: 65))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
                .padding()
            
            TextEditor(text: $homeData.content)
                .padding()
            
            Divider()
                .padding()
            
            HStack {
                Text("When")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
                .padding()
            
            HStack(spacing: 10) {
                DateButton(title: "Today", homeData: homeData)
                DateButton(title: "Tomorrow", homeData: homeData)
                
                DatePicker("", selection: $homeData.date, displayedComponents: .date)
                    .labelsHidden()
            }
                .padding()
            
            Button(action: {}, label: {
                Label(
                    
                    title: { Text("Add Now")
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    },
                    icon: { Image(systemName: "plus")
                        .font(.title2)
                        .foregroundColor(.white)
                    })
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(8)
            })
            .padding()
        }
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all, edges: .bottom))
    }
}
