//
//  LocalisationPicker.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI

struct LocalisationPicker: View {
    @State var selectedOption = 0
    let arrayLength : Int
    let options = ["My location","Tunis","Sousse","Sfax"]
    var body: some View {
        HStack{
            VStack{
                Text("Recent places(\(arrayLength))").font(.title)
                Text("Range")
            }
            .frame(alignment: .topLeading)
            Spacer()
            Picker(selection: $selectedOption,
                   label: Text("MyLocation")){
                ForEach(0..<options.count){
                    index in
                    Text(self.options[index])
                }
            }
        }.frame(alignment: .leading)
    }
}


