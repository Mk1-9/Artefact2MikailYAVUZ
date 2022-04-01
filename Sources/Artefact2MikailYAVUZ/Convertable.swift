//
//  Convertable.swift
//  
//
//  Created by Mikail Yavuz on 01/04/22.
//

import Foundation
import UIKit

@available(iOS 15.0, *)
public protocol SwiftUIViewConvertable {
    associatedtype View: UIView
    func toSwiftUIView() -> UIViewContain<View>
}

extension UIView: SwiftUIViewConvertable {}

@available(iOS 15.0, *)
public extension SwiftUIViewConvertable where Self: UIView {
    func toSwiftUIView() -> UIViewContain<Self> {
        return UIViewContain(self)
    }
}
