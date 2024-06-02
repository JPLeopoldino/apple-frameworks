//
//  FrameworkView.swift
//  apple-frameworks
//
//  Created by João Pedro Leopoldino on 2024-06-02.
//

import SwiftUI

struct FrameworkView: View {
    
    @State var isGridView = true
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                if isGridView {
                    FrameworkGridView()
                } else {
                    FrameworkListView()
                }
                
                FloatingActionButton(isGridView: $isGridView)
                    .padding()
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkView()
        .preferredColorScheme(.dark)
}
