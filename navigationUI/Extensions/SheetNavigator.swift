//
//  SheetNavigator.swift
//  navigationUI
//
//  Created by emre on 5.02.2023.
//

import SwiftUI

class SheetNavigator: ObservableObject {

    // MARK: - Enumaretions
    enum SheetDestination {
        case firstView
        case secondView
    }

    // MARK: - Properties
    static let shared = SheetNavigator()
    @Published var firstViewIsPresented = false
    @Published var secondViewIsPresented = false
    var sheetDestination: SheetDestination = .secondView
}
