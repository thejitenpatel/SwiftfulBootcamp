//
//  ListBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 21/01/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "peach", "banana"
    ]
    
    
    var body: some View {
        NavigationView {
            List{
                Section( header: Text("Fruits")){
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit.capitalized)
                        
                    }
                    .onDelete(perform: deleteFruit)
                }
                .navigationTitle("Grocery List")
                .navigationBarItems(leading: EditButton())
            }
        }
    }
    
    
    
    func deleteFruit(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
