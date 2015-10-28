//
//  NSLayoutConstraint+Shortcut.swift
//
//  Created by Rudd Taylor on 7/9/15.
//

import UIKit

extension NSLayoutConstraint {
    convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, toItem view2: AnyObject?, attribute attr2: NSLayoutAttribute) {
        self.init(item: view1, attribute: attr1, relatedBy: relation, toItem: view2, attribute: attr2, multiplier: 1, constant: 0)
    }
    
    convenience init(item view1: AnyObject, attribute attr1: NSLayoutAttribute, relatedBy relation: NSLayoutRelation, constant: CGFloat) {
        self.init(item: view1, attribute: attr1, relatedBy: relation, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: constant)
    }
    
    public class func constraintsWithVisualFormat(format: String, options opts: NSLayoutFormatOptions, views: [String : AnyObject]) -> [NSLayoutConstraint] {
        return NSLayoutConstraint.constraintsWithVisualFormat(format, options: opts, metrics: nil, views: views)
    }
    
    public class func constraintsWithVisualFormat(format: String, views: [String : AnyObject]) -> [NSLayoutConstraint] {
        return NSLayoutConstraint.constraintsWithVisualFormat(format, options: [], views: views)
    }
}

extension UIView {
    public func addConstraintsWithVisualFormat(format: String, views: [String: AnyObject]) {
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(format, views: views))
    }
}