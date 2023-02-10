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
    @State var result1: Double = 0
    @State var result2: Double = 0
    @State var isEquation1 = true
    @State var isEquation2 = true
    @State var finalResult: Double = 0

    var body: some View {
        VStack {
            HStack {
                // １つ目の計算機
                VStack {
                    CustomTextField(text: $number1)
                    HStack{
                        Text("＋")
                        Toggle(isOn: $isEquation1) {
                        }
                        .fixedSize()
                        Text("ー")
                    }
                }
                // ２つ目の計算機
                VStack {
                    CustomTextField(text: $number2)
                    HStack{
                        Text("＋")
                        Toggle(isOn: $isEquation2) {
                        }
                        .fixedSize()
                        Text("ー")
                    }
                }
            }
            Button(action: {
                result1 = calResult(isEquation: isEquation1, number: number1)
                result2 = calResult(isEquation: isEquation2, number: number2)
            }) {
                Text("Button")
                    .font(.title)
            }

            HStack{
                Text(String(result1))
                    .font(.title)

                Text("+")
                
                Text(String(result2))
                    .font(.title)
            }
            Text(String(result1 + result2))
                .font(.title)
        }
    }
    private func calResult(isEquation: Bool, number: String) -> Double {
        let num = Double(number) ?? 0
        if isEquation {
            // 数値の符号を反転し、値を返す
            return num * -1
        }
        else {
            // 数値の符号をそのままで値を返す
            return num
        }
    }
}

struct CustomTextField: View {
    @Binding var text: String
    var body: some View {
            TextField("", text: $text)
                .font(.title)
                .frame(width: 100)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
