//
//  AuthenticationHandler.swift
//  Charger
//
//  Created by Emine Sinem Gursoy on 05.07.22.
//

import Foundation

struct LoginData: Encodable {
    let email: String
    let deviceUDID: String
}
struct LoginResponse: Decodable {
    let token: String
    let userID: Int
}

class AuthenticationHandler {
    private init() {}
    
    static let shared = AuthenticationHandler()
    var loginResponse: LoginResponse?
    
    func login(email: String, completion: @escaping (Error?) -> Void) {
        let url = URL(string: "http://ec2-18-197-100-203.eu-central-1.compute.amazonaws.com:8080/auth/login")!
        
        var request = URLRequest(url: url)
        
        /// Set HTTP Method to POST
        request.httpMethod = "POST"
        
        // Set Content-Type header to json, to send Body in JSON format
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Login data is the format that the API expects the parameters
        let loginData = LoginData(email: email, deviceUDID: "lkajsdasklda")
        let encodedLoginData = try! JSONEncoder().encode(loginData)
        request.httpBody = encodedLoginData
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(error)
            } else if let data = data {
                if let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) {
                    
                    // Save login response which has the token
                    self.loginResponse = loginResponse
                    completion(error)
                }
            }
        }.resume()
    }
}
