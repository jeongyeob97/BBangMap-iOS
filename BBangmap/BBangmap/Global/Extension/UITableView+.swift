//
//  UITableView+.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/26.
//

import UIKit

extension UITableViewCell: ReusableView { }

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier,
                                             for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }

    func restore() {
        backgroundView = nil
    }
}
