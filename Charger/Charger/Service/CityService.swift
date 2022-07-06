//
//  CityService.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 03.07.22.
//

import Foundation

class CityService {
    // Cities are fetched asynchrounously
    func fetchCities(completion: @escaping ([String], Error?) -> Void) {
        let url = URL(string: "http://ec2-18-197-100-203.eu-central-1.compute.amazonaws.com:8080/provinces?userID=\(AuthenticationHandler.shared.loginResponse!.userID)")!
        
        var request = URLRequest(url: url)
        
        // Set token
        request.addValue(AuthenticationHandler.shared.loginResponse!.token, forHTTPHeaderField: "token")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion([], error)
            } else if let data = data {
                if let cityList = try? JSONDecoder().decode([String].self, from: data) {
                    completion(cityList, nil)
                }
            }
        }.resume()
    }
}
