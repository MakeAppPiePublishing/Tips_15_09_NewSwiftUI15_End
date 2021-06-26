//
//  WorldViewLabel.swift
//  testxcode13
//
//  Created by Steven Lipton on 6/10/21.
//

import SwiftUI

struct TransportViewLabel: View {
    @Binding var index:Int
    @Binding var useCircle:Bool
    let symbols = ["bicycle","car","tram"]
    
    var formattedSymbol:String{
         
        return symbols[index].replacingOccurrences(of: ".", with: " & ").capitalized
    }
    
    var body: some View {
        VStack{
            Image(systemName:symbols[index])
                .resizable()
                .scaledToFit()
                .symbolVariant(useCircle ?.circle : .none )
                
            Text("Hello **\(formattedSymbol)**") 
                .font(.title2)
                .padding()
                .background(.regularMaterial)
                
            
        }
    }
}

struct WorldViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        TransportViewLabel(index: .constant(0), useCircle: .constant(false))
    }
}
