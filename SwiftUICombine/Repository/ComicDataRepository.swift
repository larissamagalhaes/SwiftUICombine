//
//  ComicDataRepository.swift
//  SwiftUICombine
//
//  Created by Larissa Magalhães on 2019-10-31.
//  Copyright © 2019 Larissa Magalhães. All rights reserved.
//

import Foundation
import Combine

class ComicDataRepository: ComicRepository {
    private let remoteDataSource: ComicDataSource
    private let localDataSource: ComicDataSource
    
    init(remoteDataSource: ComicDataSource, localDataSource: ComicDataSource) {
        self.remoteDataSource = remoteDataSource
        self.localDataSource = localDataSource
    }
    
    func addComic(comics: [Comic]) -> AnyPublisher<Bool, Never> {
        return remoteDataSource
            .addComic(comics: comics)
            .sink { value in
                localDataSource.addComic(comics: comics)
        }
    }
}
