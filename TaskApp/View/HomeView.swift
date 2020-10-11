//
//  HomeView.swift
//  TaskApp
//
//  Created by Florian Beaumont on 10/11/20.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var HomeData = HomeViewModel()
    
    var body: some View {
        
        Button(action: {HomeData.isNewData.toggle()}, label: {
            Text("Button")
        })
        .sheet(isPresented: $HomeData.isNewData , content: {
            NewDataView(homeData: HomeData)
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
