    //
    //  ViewModelBootcamp.swift
    //  SwiftfulBootcamp
    //
    //  Created by Jiten Patel on 22/01/23.
    //

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject{
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruit()
    }
    
    func getFruit()  {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 5)
        let fruit3  = FruitModel(name: "Peach", count: 10)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
        // @StateObject -> Use this on creation/init
        // @ObservedObject -> Use this for subviews
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            
                            Text("\(fruit.count)")
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
                
            }
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
            
        }
    }
    
    
    
}

struct RandomScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack{
                        
                        Text("\(fruit.count)")
                        Text(fruit.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            
//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("Go Back")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
            
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
