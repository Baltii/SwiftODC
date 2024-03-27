//
//  GetAllPlacesState.swift
//  TestApp
//
//  Created by Orangeodc10 on 27/3/2024.
//

import Foundation

enum GetAllPlacesState:Equatable    
{
    case loading
    case success([Place])
    case failure(String)
}
