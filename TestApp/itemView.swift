//
//  itemView.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI

struct itemView : View {
    let item : Place
    var body: some View {
        
        HStack{
            VStack(alignment:.leading){
                Text(item.name).bold()
                
                    HStack{
                        ForEach(item.hints,id:\.self){
                            
                            item in
                            Text(item)
                                .font(.system(size: 12))
                                .padding([.leading,.trailing],12)
                                .padding([.bottom,.top],6)
                                .background(
                                    RoundedRectangle(cornerRadius: 50).fill(.secondary))
                    }
                }
            }
            Spacer()
            VStack{
                Image(systemName: "star")
                Text(String(format: "%.1f m", item.distance)).bold().foregroundColor(.gray).font(.system(size: 14)).padding(.top,8)
            }
        }
    }
}

struct itemView_Previews: PreviewProvider {
    static var previews: some View {
        itemView(item: Place(name:"Marsa", distance:30.0, hints: ["Plage","Mosqye","restaurant"]))
    }
}
