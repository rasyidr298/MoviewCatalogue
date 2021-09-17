//
//  SearchInteractore.swift
//  MovieCatalogue
//
//  Created by Rasyid Ridla on 17/9/21.
//

import Foundation
import Combine

protocol SearchUseCase {
    func searchMovie(page: Int, query: String) -> AnyPublisher<[MovieModel], Error>
}

class SearchInteractor: SearchUseCase {
    
    private let repository: TmdbRepository
    
    required init(repository: TmdbRepository) {
        self.repository = repository
    }
    
    // MARK: searchMovie
    func searchMovie(page: Int, query: String) -> AnyPublisher<[MovieModel], Error> {
        return repository.searchMovie(page: page, query: query)
    }
}
