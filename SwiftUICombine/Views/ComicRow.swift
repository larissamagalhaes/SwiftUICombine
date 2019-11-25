//
//  ComicRow.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-30.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import SwiftUI

struct ComicRow: View {
    
    var comic: Comic
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            self.comic.image
                .resizable()
                .scaledToFit()
                .padding(.top, 8)
                .padding(.leading, 8)
                .padding(.bottom, 8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(comic.title)
                    .foregroundColor(.black)
                    .bold()
                    .font(.system(size: 15))
                Text(comic.description)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14))
            }
            .padding(.trailing, 8)
            
        }
    }
}

struct ComicRow_Previews: PreviewProvider {
    static var previews: some View {
        ComicRow(comic: Comic(id: 1, title: "Iron Man", body: "Plagued with worry and insomnia since saving New York from destruction, Tony Stark (Robert Downey Jr.), now, is more dependent on the suits that give him his Iron Man persona -- so much so that every aspect of his life is affected, including his relationship with Pepper (Gwyneth Paltrow). After a malevolent enemy known as the Mandarin (Ben Kingsley) reduces his personal world to rubble, Tony must rely solely on instinct and ingenuity to avenge his losses and protect the people he loves.", imageURL: "https://terrigen-cdn-dev.marvel.com/content/prod/1x/ironman3_lob_crd_01_10.jpg"))
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
