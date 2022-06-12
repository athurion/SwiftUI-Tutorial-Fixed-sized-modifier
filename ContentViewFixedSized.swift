//
//  ContentView.swift
//  SwiftUI Tutorial: SwiftUI Tutorial: Fixed sized modifier
//
//  Created by Alvin Sosangyo on 06/11/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        ZStack {
            
            // Change the filename depending on the image that you'll be using
            Image("lee-chinyama")
                .resizable()
                .ignoresSafeArea(.all)
            
            ExternalView()
            
        }
        
    }

} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExternalView: View {
    
    @State private var passengerNumber: Int = 1
    let numberList = [1, 2, 3, 4, 5]
    
    var body: some View {
        
        ZStack {
            
            Color.white
            
            HStack {
                
                Image(systemName: "person.3.fill")
                    .font(.system(size: 30))
                
                Text("How many passengers?")
                
                Spacer()
                
                Picker("How many passengers", selection: $passengerNumber) {
                    ForEach(numberList, id: \.self) {
                        Text("\($0)")
                    }
                }
                .accentColor(.black)
            }
            .padding()
            
        }
        .padding()
        .fixedSize(horizontal: false, vertical: true)
    }
    
} // ExternalView
