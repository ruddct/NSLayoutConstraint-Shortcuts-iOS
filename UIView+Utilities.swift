//
//  UIView+Utilities.swift
//
//  Created by Rudd Taylor on 10/28/15.
//

import UIKit

extension UIView {
    func addSubviews(views: [UIView], translatesAutoresizingMaskIntoConstraints: Bool = false) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
            self.addSubview(view)
        }
    }
}
