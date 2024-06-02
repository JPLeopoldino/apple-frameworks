//
//  FloatingActionButton.swift
//  apple-frameworks
//
//  Created by João Pedro Leopoldino on 2024-06-02.
//

import SwiftUI

struct FloatingActionButton: View {
    
    @Binding var isGridView: Bool
    
    var body: some View {
        Button {
            isGridView.toggle()
        }
        label: {
            Image(systemName: isGridView ? "rectangle.grid.1x2" : "square.grid.2x2")
                .font(.title.weight(.semibold))
                .frame(width: 40, height: 40)
        }
        .buttonStyle(BorderedProminentButtonStyle())
        .controlSize(.extraLarge)
        .buttonBorderShape(.circle)
        .tint(.red)
        .shadow(radius: 4, x: 0, y: 4)
    }
}

#Preview {
    FloatingActionButton(isGridView: .constant(false))
}
