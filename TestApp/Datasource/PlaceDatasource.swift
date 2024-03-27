//
//  PlaceDatasource.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import Foundation
class PlaceDatasource {
    func getAllPlaces(url:String) async throws -> Any?
    {
        guard let url = URL(string: url) else { return nil }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        let (data,response) = try await URLSession.shared.data(for: urlRequest)
        if let reponse = (response as? HTTPURLResponse)
        {
            if reponse.statusCode == 200{
                return try
                    JSONDecoder().decode([PlaceItemResponse].self,from: data)
            }
            else{
                return nil
            }
        }
        else{
            return nil
        }
        
    }
}
