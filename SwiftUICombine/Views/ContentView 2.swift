//
//  ContentView.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-23.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedView = 1
    
    var body: some View {
        TabView(selection: $selectedView) {
            HomeView()
                .tabItem {
                    Image("home")
                    Text("Home")
            }
            .tag(1)
            Text("Signal Viewer")
                .tabItem {
                    Image("home")
                    Text("Signal Viewer") }.tag(2)
            Text("Settings")
                .tabItem {
                    Image("home")
                    Text("Settings") }.tag(3)
            Text("Me")
                .tabItem {
                    Image("home")
                    Text("Me") }.tag(4)
        }
        .accentColor(Color(red: 2/255, green: 131/255, blue: 133/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
