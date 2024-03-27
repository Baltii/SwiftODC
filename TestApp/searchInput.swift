//
//  searchInput.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI

struct searchInput: View {
    
    @Binding var searchValue: String

    var body: some View {
        TextField("Search", text: $searchValue)
    }
}

//struct searchInput_Previews: PreviewProvider {
   // static var previews: some View {
        //searchInput("fdsf")
    //}
//}
