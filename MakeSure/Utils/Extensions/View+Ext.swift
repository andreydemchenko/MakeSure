//
//  View+Ext.swift
//  MakeSure
//
//  Created by Macbook Pro on 30.06.2023.
//

import SwiftUI
import Foundation

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
    
    func placeholder<Content: View>(
           when shouldShow: Bool,
           alignment: Alignment = .leading,
           @ViewBuilder placeholder: () -> Content) -> some View {
               
               ZStack(alignment: alignment) {
                   placeholder().opacity(shouldShow ? 1 : 0)
                   self
               }
           }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
