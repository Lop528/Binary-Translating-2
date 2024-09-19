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
            Text("Translator")
            TextField("Enter Number", text: $enteredNumber)
            Divider()
            HStack {
                HStack {
                    Button("Binary") {
                        finalString = "\(binaryString(from: number))"
                    }
                }
                .foregroundColor(.cyan)
                Button("Hexadecimal") {
                    finalString = "\(hexaString(from: number))"
                }
                .foregroundColor(.cyan)
            }
            Text("\(finalString)")

        }
        .padding()
    }
    func binaryString(from number: Int) -> String {
        guard number >= 0 else {
            return "Invalid number"
        }
        
        return String(number, radix: 2)
    }
    func hexaString(from number: Int) -> String {
        guard number >= 0 else {
            return "Invalid number"
        }
        
        return String(number, radix: 16)
    }
}



#Preview {
    ContentView()
}
