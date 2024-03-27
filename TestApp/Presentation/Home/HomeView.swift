//
//  HomeView.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI
import CoreData

 var searchedValue : String = ""
struct HomeView: View {
    @EnvironmentObject var homeViewModel : HomeViewModel

    var body : some View {
        VStack(spacing:30) {
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "gearshape.fill")
                }
            }.frame(
                maxWidth: .infinity,
                alignment: .topTrailing)
            
            //HStack{
                //searchInput(searchValue: self.searchValue)
            //}
            if case .loading = self.homeViewModel.getAllPlacesStates{
                HStack{
                    ProgressView().progressViewStyle(.circular)
                }
            }
           else if case .success(let places) =
                    self.homeViewModel.getAllPlacesStates {
               LocalisationPicker(arrayLength : places.count)

                ScrollView(showsIndicators: false){
                    
                        ForEach(places, id: \.id)
                        {
                            item in
                            NavigationLink
                            {
                                Text("")
                            }label: {
                                itemView(item : item)
                            }.buttonStyle(PlainButtonStyle())
                            Divider()
                        }
                        
                    
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
            .padding().onAppear{
            
           self.homeViewModel.getAllPlaces()
        }
    }

}
struct HomeView_Previews: PreviewProvider {
static var previews: some View {
        HomeView()
    }
}






