//
//  CitySelectionViewModel.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 04.07.22.
//

import Foundation

protocol CitySelectionViewModelProtocol {
    func fetchCities(completion: @escaping ([City], Error?) -> Void)
}

class CitySelectionViewModel {
    private let service: CityService = CityService()
}

extension CitySelectionViewModel: CitySelectionViewModelProtocol {
    func fetchCities(completion: @escaping ([City], Error?) -> Void) {
        service.fetchCities { cities, error in
            // Convert string array to city array
            completion(cities.map { City(cityName: $0) }, error)
        }
    }
}
