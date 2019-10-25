//
//  HomeView.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-24.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import SwiftUI


struct HomeView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(red: 2/255, green: 131/255, blue: 133/255, alpha: 1)]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(red: 2/255, green: 131/255, blue: 133/255, alpha: 1)]
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    HomeSectionView(title: "ASSESSMENT", items: ["Performance Profile", "Daily HRV", "Self Awareness"])
                        .padding(.all, 8)
                        .frame(height: 150, alignment: .topLeading)
                    
                    HomeSectionView(title: "TRAINING", items: ["Focus", "Relax", "Recover"])
                        .padding(.leading, 8)
                        .padding(.trailing, 8)
                        .padding(.bottom, 8)
                        .frame(height: 150, alignment: .topLeading)
                    
                    HomeSectionView(title: "Assessment", items: ["Performance Profile", "Daily HRV", "Self Awareness"])
                        .padding(.leading, 8)
                        .padding(.trailing, 8)
                        .padding(.bottom, 8)
                        .frame(height: 300, alignment: .topLeading)
                }
                .background(Color(red: 245/255, green: 245/255, blue: 245/255))
            }
            .navigationBarTitle(Text("Welcome Larissa"), displayMode: .automatic)
            .foregroundColor(Color(red: 2/255, green: 131/255, blue: 133/255))
        }
        .background(Color.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
