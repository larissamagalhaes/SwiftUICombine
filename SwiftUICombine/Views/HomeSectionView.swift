//
//  HomeItemRow.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-24.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import SwiftUI

struct HomeSectionView: View {
    var title: String
    var items: [String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(verbatim: title)
                .padding(.top, 4)
                .padding(.leading, 4)
                .padding(.bottom, 4)
            GeometryReader { geometry in
                HStack {
                    ForEach(self.items, id: \.self) { row in
                        NavigationLink(destination: Text("ProfileView")) {
                            VStack(alignment: .center) {
                                Image("heart")
                                    .padding(.leading, 8)
                                    .padding(.trailing, 8)
                                    .padding(.top, 8)
                                Text(verbatim: "\(row)")
                                    .padding(.leading, 4)
                                    .padding(.trailing, 4)
                                    .padding(.top, 2)
                                    .padding(.bottom, 8)
                                    .multilineTextAlignment(.center)
                                    .font(Font.system(size: 13.0))
                            }
                        }
                        .foregroundColor(Color.white)
                        .frame(width: (geometry.size.width/3) - 8, height: geometry.size.height)
                        .background(Color(red: 2/255, green: 131/255, blue: 133/255))
                        .cornerRadius(4)
                    }
                }
            }
            .padding(.trailing, 8)
            .padding(.leading, 8)
            .padding(.bottom, 16)
        }
        .background(Color.white)
        .cornerRadius(4)
    }
}


struct HomeSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSectionView(title: "Assessment", items: ["Performance Profile", "Daily HRV", "Self Awareness"])
    }
}
