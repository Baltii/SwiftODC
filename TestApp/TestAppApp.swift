//
//  TestAppApp.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI

@main
struct TestAppApp: App {

    @StateObject var homeViewModel : HomeViewModel = HomeViewModel(placeMapper: PlaceMapper())
    var body: some Scene {
        WindowGroup {
            NavigationStack
            {
                HomeView()
            }.environmentObject(self.homeViewModel)
        }
    }
}
