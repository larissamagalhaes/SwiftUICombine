//
//  Marvel.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-30.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import Moya
import Foundation
import CommonCrypto

public enum Marvel {
    static private let publicKey = "30661336fa1008edbfb4ac8e7c13bc26"
    static private let privateKey = "e55a9ffe3bd8d9aa23e28260fc6f3d5f277c9c6f"

    case comics
}

extension Marvel: TargetType {

    public var baseURL: URL {
        return URL(string: "https://gateway.marvel.com/v1/public")!
    }

    public var path: String {
        switch self {
        case .comics:
            return "/comics"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .comics:
            return Moya.Method.get
        }
    }

    public var sampleData: Data {
        return Data()
    }

    public var task: Task {
        let ts = "\(Date().timeIntervalSince1970)"
        let hash = (ts + Marvel.privateKey + Marvel.publicKey).md5
        let parameters = ["format" : "comic",
                          "formatType": "comic",
                          "orderBy": "-onsaleDate",
                          "dateDescriptor": "lastWeek",
                          "limit": 50,
                          "apikey": Marvel.publicKey, "ts": ts, "hash": hash] as [String : Any]

        switch self {
        case .comics:
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }

    public var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }

    public var validationType: ValidationType {
        return .successCodes
    }

}
