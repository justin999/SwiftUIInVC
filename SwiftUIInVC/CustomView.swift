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
    var buttonTapped: (() -> Void)? = nil
    
    
    var body: some View {
//        foregroundColor(.clear)
        ZStack {
            
            Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("great day")
                    .foregroundColor(.blue)
                Button(action: {
                    buttonTapped?()
                }) {
                    Text("Button")
                }
            }
            
        }
        .onTapGesture(count: 1, perform: {
            print("come?")
            dismiss?()
        })
//        .foregroundColor(.clear)
        
        
        
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
