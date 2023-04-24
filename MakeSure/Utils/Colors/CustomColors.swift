//
//  CustomColors.swift
//  MakeSure
//
//  Created by andreydem on 21.04.2023.
//

import Foundation
import SwiftUI

class CustomColors {

    static let mainGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gradientDarkBlue, Color.gradientPurple]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    static let secondGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gradientDarkBlue, Color.gradientPurple]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let whiteGradient = LinearGradient(
        gradient: Gradient(colors: [Color.white]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    static let grayGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gray]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    static let darkGray = Color("DarkGrayColor")
    static let purpleColor = Color("PurpleColor")
}

extension Color {
    static let gradientDarkBlue = Color(red: 0, green: 0.003, blue: 0.46)
    static let gradientPurple = Color(red: 0.7, green: 0.46, blue: 1)
}
