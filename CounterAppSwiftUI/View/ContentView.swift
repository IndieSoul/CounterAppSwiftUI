//
//  ContentView.swift
//  CounterAppSwiftUI
//
//  Created by Luis Enrique Rosas Espinoza on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("\(counter)")
                    .font(.largeTitle)
                    .fontWeight(.regular)
                Text(counter == 1 ? "Click" : "Clicks")
                    .font(.title2)
                    .fontWeight(.thin)
                Spacer()
                
            }
            .padding()
            VStack {
                Text("Counter App\nSwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        ButtonView(systemImage: "repeat") {
                            counter = 0
                        }
                        ButtonView(text: "+1") {
                            counter += 1
                        }
                        ButtonView(text: "-1") {
                            counter -= 1
                        }
                    }
                    .padding(.trailing)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
