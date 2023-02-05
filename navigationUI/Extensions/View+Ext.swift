//
//  View+Ext.swift
//  navigationUI
//
//  Created by emre on 5.02.2023.
//

import SwiftUI

extension View {

    // MARK: - Functions
    func presentation(isModal: Binding<Bool>, onDismissalAttempt: (()->())? = nil) -> some View {
        ModalView(view: self, isModal: isModal, onDismissalAttempt: onDismissalAttempt)
    }
}
