//
//  ContentView.swift
//  Shared
//
//  Created by Steven Lipton on 6/21/21.
//

import SwiftUI

struct ContentView: View {
    @State var globeIndex = 0
    @State var hasBackground:Bool = true
    @State var useCircle:Bool = true
    var body: some View {
        
            VStack{
                HStack {
                    Spacer()
                   
                    VStack(alignment:.leading) {
                        Text("Hello, Transport!").font(.title).fontWeight(.heavy)
                            .padding(.top)
                        Text("Say *hello* to transport")
                            .font(.title2)
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .background(.thinMaterial, in: Capsule())
                    Spacer()
                }   //add code
               
              
                .padding()
                Spacer()
                
            TransportViewLabel(index: $globeIndex, useCircle: $useCircle)
                    .padding()
                Spacer()
                ToolbarView(index: $globeIndex, useCircle: $useCircle)
                    .foregroundStyle(.secondary)
                    .padding()
                    //.background(.white, in:RoundedRectangle(cornerRadius: 10))
                    //.padding()
                    .background(.bar)
                //add code
            }
            .background(Image("trainTracks")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea(edges:.bottom)
            )
        
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
