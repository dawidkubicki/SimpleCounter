//
//  ContentView.swift
//  SimpleCounterSwiftUI
//
//  Created by Dawid Kubicki on 30/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack{
            Button(action: {
                self.counter += 1
            }, label: {
                Text("Tap me")
                    .foregroundColor(.white)
            })
            .padding()
            .background(Color.black)
            .cornerRadius(5.0)
            
            if counter>0 {
                Text("You've tapped me \(counter) times")
                    .padding()
                    .font(.largeTitle)
            } else {
                Text("You've not tap me")
                    .padding()
                    .font(.largeTitle)
            }
            
            ForEach(1...3, id: \.self) { x in
                Text("Item \(x)")
            }
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
