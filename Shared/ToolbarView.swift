//
//  ToolbarView.swift
//  testxcode13
//
//  Created by Steven Lipton on 6/10/21.
//

import SwiftUI

struct ToolbarView: View {
    @Binding var index:Int
    @Binding var useCircle:Bool
    var body: some View {
        HStack{
            Button(action: {index = index - 1 < 0 ? 2 : index - 1}, label: {Image(systemName:"chevron.left.circle").font(.title)})
                Spacer()
            Button(action: {useCircle.toggle()}){
                Image(systemName: useCircle ? "circle.fill" : "circle")
                    .font(.title)
            }
            Spacer()
            Button(action: {index = (index + 1) % 3}, label: {Image(systemName:"chevron.right.circle").font(.title)})
            
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView(index:.constant(0), useCircle: .constant(true))
    }
}
