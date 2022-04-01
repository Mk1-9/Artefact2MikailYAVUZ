//
//  Container.swift
//  
//
//  Created by Mikail Yavuz on 01/04/22.
//

import Foundation
import UIKit
import SwiftUI

@available(iOS 15.0, *)
public struct UIViewContain<Child: UIView>: Identifiable {
    
    public var id: UIView { view }
    
    private let view: Child

    private var size: CGSize {
            view.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
    }

    public init(_ view: @autoclosure () -> Child) {
        self.view = view()

    }
}

@available(iOS 15, *)
extension UIViewContain: UIViewRepresentable {

    public func makeUIView(context: Context) -> UIView {
        return view
    }
    
    public func updateUIView(_ view: UIView, context: Context) {}
}
