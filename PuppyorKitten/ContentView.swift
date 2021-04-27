//
//  ContentView.swift
//  PuppyorKitten
//
//  Created by Kentaro Umemoto on 4/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPuppy = false
    @State var isSheet = false
    var body: some View {
        VStack {
            Button(action: {
                     isSheet.toggle()
            } ) {
                ButtonLabel(title: "Choose your favorite",symbol: "flame",color: .red)
            }.position(x: UIScreen.main.bounds.width / 2,y: UIScreen.main.bounds.height * 0.80)
            .sheet(isPresented: $isSheet, content: {
                SheetView(isPuppy: $isPuppy)
            })
            
        }.background(isPuppy ? Image("puppy\(Int.random(in: 0..<6))").resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center) : Image("kitten\(Int.random(in: 0..<5))").resizable().aspectRatio(contentMode: .fit).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
            
        }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
