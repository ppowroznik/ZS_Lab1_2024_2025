//
//  ContentView.swift
//  ZS_Lab1_2024_2025
//
//  Created by Paweł Powroźnik on 19/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State var opacity: Double = 0.5
    @State var color1 = Color.red
    @State var color2 = Color.blue
    @State var colorDatas : [ColorData] = [
        .init(colorName: "red", colorValue: Color.red, count: 1),
        .init(colorName: "blue", colorValue: Color.blue, count: 1),
        .init(colorName: "green", colorValue: Color.green, count: 0),
        .init(colorName: "yellow", colorValue: Color.yellow, count: 0),
        .init(colorName: "orange", colorValue: Color.orange, count: 0),
        .init(colorName: "purple", colorValue: Color.purple, count: 0),
        .init(colorName: "teal", colorValue: Color.teal, count: 0),
        .init(colorName: "gray", colorValue: Color.gray, count: 0)
    ]

    var body: some View {
        NavigationStack {
            VStack {
                Circle()
                    .fill(color1)
                    .opacity(opacity)
                    .frame(width: 200)
                    .onTapGesture {
                        if opacity == 1 {
                            opacity = 0
                        } else {
                            opacity = 1
                        }
                    }
                Circle()
                    .fill(color2)
                    .opacity(1-opacity)
                    .frame(width: 200)
                    .onTapGesture {
                        if opacity == 1 {
                            opacity = 0
                        } else {
                            opacity = 1
                        }
                    }
                Spacer()
                HStack{
                    Button("Losuj kolor 1"){
                        color1 = randColor()
                    }
                    Spacer()
                    Button("Losuj kolor 2"){
                        color2 = randColor()
                    }
                }
                NavigationLink("Pokaz statystyke", destination: StatisticView(colors: colorDatas))
            }
            .padding()
        }
    }
    
    func randColor() -> Color {
        let i = Int.random(in: 0..<colorDatas.count)
        colorDatas[i].count += 1
        return colorDatas[i].colorValue
    }
}

#Preview {
    ContentView()
}
