//
//  SecondSheetView.swift
//  navigationUI
//
//  Created by emre on 5.02.2023.
//

import SwiftUI

struct SecondSheetView: View {

    // MARK: - Properties
    @State var musicName: String = ""
    @Binding var showSheet: Bool

    // MARK: - UI Elements
    var body: some View {
        NavigationView {
            Form {
                Section(
                    header: Text("New Music")
                ) {
                    VStack {
                        Image(systemName: "music.quarternote.3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                            .padding()

                        HStack {
                            Text("Name: \(musicName)")
                            Spacer()
                        }

                        TextField("Music Name", text: $musicName)
                    }
                }
            }
            .navigationBarTitle("Add Music")
            .navigationBarItems(
                leading: Button(action: {
                    showSheet = false
                }) {
                    Text("Stop")
                }
            )
        }
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSheetView(showSheet: .constant(false))
    }
}

