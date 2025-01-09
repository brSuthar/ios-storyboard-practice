//
//  ApiService.swift
//  experiment
//
//  Created by Bhoma Ram on 26/12/24.
//

import Foundation
import UIKit


class ApiService {
    static private var instance: ApiService = ApiService();
    
    private init() {}
    
    static func shared() -> ApiService {
        return instance;
    }
    
    func fetchPost(api_url: String, completion: @escaping (Result<[Posts], Error>) -> Void) -> Void {
        guard let url = URL(string: api_url) else {
            showAlert(title: "Alert", message: "")
            return
        }
        
        var request = URLRequest(url: url);
        
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared;
        
        let task = session.dataTask(with: request) { [weak self] data, response, error in
            guard let self = self else { return }
            if let error = error {
                showAlert(title: "Alert", message: "Error: \(error.localizedDescription)")
                return
            }
            
            
            guard let data = data else {
                showAlert(title: "Alert", message: "No data received")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode([Posts].self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    func showAlert(title: String, message: String) -> Void {
        if let topViewController = UIApplication.getTopViewController() {
            let alert = UIAlertController(
                title: title,
                message: message,
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            topViewController.present(alert, animated: true, completion: nil)
        }
    }
}
