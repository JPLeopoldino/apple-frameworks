//
//  FrameworkListView.swift
//  apple-frameworks
//
//  Created by João Pedro Leopoldino on 2024-06-02.
//

import SwiftUI

struct FrameworkListView: View {
    var body: some View {
        List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink(value: framework) {
                    FrameworkTitleView(framework: framework, vertical: false)
                }
            }
        }
        .listRowSpacing(12)
    }
}

#Preview {
    FrameworkListView()
        .preferredColorScheme(.dark)
}
