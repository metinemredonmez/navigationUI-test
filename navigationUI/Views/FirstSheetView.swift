//
//  FirstSheetView.swift
//  navigationUI
//
//  Created by emre on 5.02.2023.
//

import SwiftUI

struct FirstSheetView: View {

    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode

    // MARK: - UI Elements
    var body: some View {
        NavigationView {
            Form {
                Text("You can create Playlist.")
                Text("You can record it as an album.")
                Text("You can register as an artist.")
            }
            .navigationBarTitle("How Do I Arrange?", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Stop")
                }
            )
        }
    }
}

struct DailyLimitView_Previews: PreviewProvider {
    static var previews: some View {
        FirstSheetView()
    }
}

