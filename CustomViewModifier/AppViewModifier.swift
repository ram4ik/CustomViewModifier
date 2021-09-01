//
//  AppViewModifier.swift
//  CustomViewModifier
//
//  Created by ramil on 01.09.2021.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}


struct AppViewModifier: View {
    var body: some View {
        VStack {
            Text("Custom View Modifier")
                .withDefaultButtonFormatting(backgroundColor: .blue)
            
            Text("SwiftUI")
                .font(.headline)
                .withDefaultButtonFormatting(backgroundColor: .orange)
            
            Text("Swift")
                .font(.title)
                .withDefaultButtonFormatting(backgroundColor: .green)
        }
    }
}

extension View {
    func withDefaultButtonFormatting(backgroundColor: Color) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
    }
}

struct ViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        AppViewModifier()
    }
}
