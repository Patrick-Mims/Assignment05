/*
    Patrick Mims
    Assignment 5
    You are awesome app with if-else
    Date: 10-12-22
 */

import SwiftUI

struct ContentView: View {
    @State private var messageString = "You are Amazing"
    @State private var isPlaying: Bool = false
    
    var body: some View {
        
        VStack {
            NavigationView {
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                    .padding()
                    .navigationBarTitle("San Francisco State", displayMode: .inline)
                
            }
            Button("Show Message") {
                let message1 = "You are Awesome"
                let message2 = "You are fabulous"
            
                if messageString == message1 {
                    messageString = message2
                } else {
                    messageString = message1
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
