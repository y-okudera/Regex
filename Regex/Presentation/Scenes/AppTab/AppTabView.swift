//
//  AppTabView.swift
//  Regex
//
//  Created by Yuki Okudera on 2023/03/18.
//

import SwiftUI

struct AppTabView: View {
    
    var body: some View {
        TabView {
            NavigationView {
                Router.menu
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                VStack {
                    Image(systemName: "note.text")
                    Text("Menu")
                }
            }
            .tag(1)
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
