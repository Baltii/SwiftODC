//
//  File.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import Foundation

class PlaceMapper{
    
    let placeDatasource : PlaceDatasource = PlaceDatasource()
    func getAllPlaces(url:String) async -> Result<[Place],Failure>
    {
        let result = try? await
        placeDatasource.getAllPlaces(url: Consts.url)
        if let result = result as? [PlaceItemResponse]
        {
            return .success(result.map{
                return Place(name: $0.name, distance: $0.dist, hints: $0.kinds.split(separator: ",") .map{String($0)})})
                            }else {
                return .failure(Failure(message: "Error"))
            }
    }
}
