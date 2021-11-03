//
//  ReusableView.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/26.
//

import UIKit.UIView

protocol ReusableView: AnyObject {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
