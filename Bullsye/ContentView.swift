//
//  ContentView.swift
//  Bullsye
//
//  Created by Sadaqat Panhwer on 5/29/20.
//  Copyright © 2020 Sadaqat Panhwer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
                // target row
                Spacer()
                HStack {
                    Text("Put bullseye as closer as you can to:")
                    Text("100")
                }
            
                //slide row
                Spacer()
                HStack{
                    Text("1")
                    Slider(value: self.$sliderValue, in: 1...100)
                    Text("100")
                }
            
                //Button row
                Button(action: {
                    print("Button pressed ")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit me"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is: \(self.sliderValue)"), dismissButton: .default(Text("Awesome")))
                    
                }.padding(.top,40)
            
            
                //score row
                Spacer()
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Start Over")
                    }
                    Spacer()
                    Text("Score:")
                    Text("999999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Info")
                    }
                }
             
            }//end of Vstack
            .padding(.bottom,20)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
