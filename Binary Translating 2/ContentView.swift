//
//  ContentView.swift
//  Binary Translating 2
//
//  Created by Liam K. Seymour on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var enteredNumber = ""
    @State var finalString = ""
    var body: some View {
        let number = Int(enteredNumber) ?? 0
        VStack {
            Text("Binary Translator")
            Divider()
            HStack {
                TextField("Enter Number", text: $enteredNumber)
                Button("Translate") {
                    finalString = "\(binaryString(from: number))"
                }
                .foregroundColor(.cyan)
            }
            Text("\(finalString)")

        }
    }
    func binaryString(from number: Int) -> String {
        guard number >= 0 else {
            return "Invalid number"
        }
        
        return String(number, radix: 2)
    }
}



#Preview {
    ContentView()
}
