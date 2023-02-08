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
            var num1 = Int(number1) ?? 0
            //            var num2 = Int(number2) ?? 0

            HStack{
                Text("＋")
                Toggle(isOn: $isEquation1) {
                }
                .fixedSize()
                Text("ー")
            }
            // TextFieldで入力された値に＋もしくはーの符号をつける
            if isEquation1 {
                // -() 入力された数字の符号を変える
                var num1 = num1 * -1
                Text(String(num1))
                    .font(.title)
            }
            else {
                // +() 入力された数字のまま
                Text(String(num1))
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
