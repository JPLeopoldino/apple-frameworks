//
//  AFButton.swift
//  apple-frameworks
//
//  Created by João Pedro Leopoldino on 2024-05-18.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "Test Title")
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
