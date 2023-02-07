//
//  ContentView.swift
//  Kadai3
//
//  Created by Ryuga on 2023/02/04.
//

import SwiftUI

struct ContentView: View {
    @State var number1: String = ""
    @State var number2: String = ""
    @State var isEquation1 = true
    @State var isEquation2 = true

    var body: some View {
        VStack {
                TextField("", text: $number1)
                    .font(.title)
                    .frame(width: 100)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            HStack{
                Text("＋")
                Toggle(isOn: $isEquation1) {
                }
                .fixedSize()
                Text("ー")

                // TextFieldで入力された値に＋もしくはーの符号をつける
                if isEquation1 {
                    Text("-" + String(number1))
                        .font(.title)
                }

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
