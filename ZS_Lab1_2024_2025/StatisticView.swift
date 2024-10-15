//
//  StatisticView.swift
//  ZS_Lab1_2024_2025
//
//  Created by Paweł Powroźnik on 19/09/2024.
//

import SwiftUI
import Charts

struct StatisticView: View {
    var colors : [ColorData]
    var body: some View {
        Chart {
            ForEach(colors) { item in
                BarMark(
                    x: .value("", item.colorName),
                    y: .value("", item.count)
                )
                .foregroundStyle(item.colorValue)
            }
        }
    }
}

#Preview {
    StatisticView(colors: [.init(colorName: "red", colorValue: Color.red, count: 3)])
}
