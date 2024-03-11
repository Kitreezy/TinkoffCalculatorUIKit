//
//  Preview + modifier.swift
//  TinkoffCalculatorIOS
//
//  Created by Artem Rodionov on 12.03.2024.
//

import SwiftUI

public struct ComfyPreview: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}

extension View {
    public func comfyPreview() -> some View {
        modifier(ComfyPreview())
    }
}
