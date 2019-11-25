//
//  ComicRepository.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-31.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import Foundation
import Combine

protocol ComicRepository {
    func addComic(comics: [Comic]) -> AnyPublisher<Bool, Never>
}
