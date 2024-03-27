//
//  HomeViewModel.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import Foundation

class HomeViewModel: ObservableObject
{
    let placeMapper : PlaceMapper

    init(placeMapper:PlaceMapper){
        self.placeMapper = placeMapper
        
    }
    @Published var getAllPlacesStates : GetAllPlacesState = .loading
    func getAllPlaces() {

        Task{
            let result = await self.placeMapper.getAllPlaces(url: Consts.url)
            if case .success(let success) = result {
                DispatchQueue.main.async {
                    self.getAllPlacesStates = .success(success)
                }
            }
            else if case .failure(let error) = result {
                DispatchQueue.main.async {
                    self.getAllPlacesStates = .failure(error.message)
                }  
            }
        }
    }
}
