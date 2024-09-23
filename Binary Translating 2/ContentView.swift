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
            Spacer()
            Text("Translator")
                .font(.custom("American Typewriter", size: 35))
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 380, height: 40)
                    .foregroundColor(.gray)
                    .opacity(0.2)
                TextField("Enter Number", text: $enteredNumber)
                    .font(.custom("American Typewriter", size: 18))
                    .padding(7)
                
            }
            Divider()
            HStack {
                Button("Binary") {
                    finalString = "\(binaryString(from: number))"
                }
                .font(.custom("American Typewriter", size: 18))
                .foregroundColor(.cyan)
                
                .foregroundColor(.cyan)
                Text("|")
                    .bold()
                Button("Hexadecimal") {
                    finalString = "\(hexaString(from: number))"
                }
                .font(.custom("American Typewriter", size: 18))
                .foregroundColor(.cyan)
                
            }
            Text("\(finalString)")
                .font(.custom("American Typewriter", size: 25))
            Spacer()

        }
        
        .offset(y:-20)
        .shadow(radius: 10)
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
