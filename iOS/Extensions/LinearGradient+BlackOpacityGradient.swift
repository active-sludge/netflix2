//
//  LinearGradient+BlackOpacityGradient.swift
//  Netflix2 (iOS)
//
//  Created by Huseyin Can Dayan on 30.12.2020.
//

import SwiftUI

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}
