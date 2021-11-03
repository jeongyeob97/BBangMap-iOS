//
//  Config.swift
//  DesignSystem
//
//  Created by 오준현 on 2021/10/29.
//

import UIKit

private final class DesignSystemBundleClass { }

extension Bundle {
    private class DesignSystemBundleClass { }

    static var DesignSystemBundle: Bundle {
        return Bundle(for: DesignSystemBundleClass.self)
    }
}

extension UIImage {
    static func loadImage(name: String) -> UIImage {
        if let image = UIImage(named: name, in: Bundle.DesignSystemBundle, compatibleWith: nil) {
            return image
        }
        assert(false, "Failed to load image")
    }
}
