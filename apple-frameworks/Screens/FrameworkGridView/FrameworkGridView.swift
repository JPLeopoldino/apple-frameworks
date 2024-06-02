//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by João Pedro Leopoldino on 2024-05-18.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework, vertical: true)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
