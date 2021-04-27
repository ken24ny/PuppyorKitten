//
//  ButtonLabel.swift
//  PuppyorKitten
//
//  Created by Kentaro Umemoto on 4/26/21.
//

import SwiftUI

struct ButtonLabel: View {
    
    var title: String
    var symbol: String
    var color: Color
    
    var body: some View {
        Label(title, systemImage: symbol)
            .frame(width: 200, height: 50)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(7)
            .padding()
            
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(title: "Choose your buddy",symbol: "flame",color: .red)
    }
}
