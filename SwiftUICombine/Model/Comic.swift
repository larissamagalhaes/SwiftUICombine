//
//  Model.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-30.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI
import RealmSwift
import Realm

class Comic: Object, Decodable {
    dynamic var id: Int = 0
    dynamic var title: String = ""
    dynamic var body: String = ""
    dynamic var imageURL: String = ""
    
    private enum ComicCodingKeys: String, CodingKey {
        case id
        case title
        case body
        case imageURL
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id: Int, title: String, body: String, imageURL: String) {
        self.init()
        self.id = id
        self.title = title
        self.body = body
        self.imageURL = imageURL
    }
    
    convenience required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ComicCodingKeys.self)
        let id = try container.decode(Int.self, forKey: .id)
        let title = try container.decode(String.self, forKey: .title)
        let body = try container.decode(String.self, forKey: .body)
        let imageURL = try container.decode(String.self, forKey: .imageURL)
        self.init(id: id, title: title, body: body, imageURL: imageURL)
    }
}

extension Comic {
    var image: KFImage {
        KFImage(URL(string: imageURL))
    }
}
