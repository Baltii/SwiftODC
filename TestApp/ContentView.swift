//
//  ContentView.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI
import CoreData


let places  = [
    Place( name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]),
    Place(name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]),
    Place(name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]),
    Place(name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]),
    Place(name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]),
    Place(name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]),
]

 var searchedValue : String = ""

struct ContentView: View {
    
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
            LocalisationPicker()
            VStack{
                ForEach(places, id: \.id)
                {
                    item in
                    Button
                    {
                            
                    }label: {
                        itemView(item : item)
                    }.buttonStyle(.plain)
                    Divider()
                }
                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top).padding()
    }

}

struct MyPreviewProvider_Previews : PreviewProvider{
    static var previews : some View {
        ContentView()
    }
}



