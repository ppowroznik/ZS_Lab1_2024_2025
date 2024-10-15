//
//  ColorData.swift
//  ZS_Lab1_2024_2025
//
//  Created by Paweł Powroźnik on 19/09/2024.
//

import Foundation
import SwiftUI

struct ColorData : Identifiable {
    var colorName: String
    var colorValue: Color
    var count: Int
    var id = UUID()
}

