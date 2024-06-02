//
//  FrameworkTitleView.swift
//  apple-frameworks
//
//  Created by João Pedro Leopoldino on 2024-06-02.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    let vertical: Bool
    
    var body: some View {
        if vertical {
            VStack {
                FrameworkTitleContentView(framework: framework, isSmall: false)
            }
        } else {
            HStack {
                FrameworkTitleContentView(framework: framework, isSmall: true)
            }
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework, vertical: true)
}


struct FrameworkTitleContentView: View {
    
    let framework: Framework
    
    let isSmall: Bool
    
    var body: some View {
        Image(framework.imageName)
            .resizable()
            .frame(width: isSmall ? 60 : 90, height: isSmall ? 60 : 90)
        Text(framework.name)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.label))
            .scaledToFit()
            .minimumScaleFactor(0.6)
            .padding()
    }
}
