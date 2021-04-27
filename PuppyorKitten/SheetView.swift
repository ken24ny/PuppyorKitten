//
//  SheetView.swift
//  PuppyorKitten
//
//  Created by Kentaro Umemoto on 4/26/21.
//

import SwiftUI

struct SheetView: View {
    @Binding var isPuppy:Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Button(action: {
                isPuppy = true
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                ButtonLabel(title: "Puppy!",symbol: "drop.fill",color: .blue)
            })
            
            Button(action: {
                isPuppy = false
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                ButtonLabel(title: "Kittens!",symbol: "bolt.fill",color: .green)
            })
            
        }
        
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isPuppy: .constant(false))
    }
}

