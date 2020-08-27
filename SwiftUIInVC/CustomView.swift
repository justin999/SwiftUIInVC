//
//  CustomView.swift
//  SwiftUIInVC
//
//  Created by Justin Sato on 2020/08/27.
//  
//

import SwiftUI

struct CustomView: View {
    var dismiss: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            Text("great day")
                .foregroundColor(.blue)
            
        }
        .onTapGesture(count: 1, perform: {
            print("come?")
            dismiss?()
        })
        
        
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
