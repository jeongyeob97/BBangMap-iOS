//
//  UIImageView+.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/26.
//

import Kingfisher

extension UIImageView {

    /// Kingfisher 이미지 처리
    /// - Parameters:
    ///   - url: 이미지 URL
    ///   - defaultImage: 디폴트 이미지!!
    func image(url: String, defaultImage: UIImage? = UIImage()) {
        kf.indicatorType = .activity
        backgroundColor = .black.withAlphaComponent(0.05)
        guard let url = URL(string: url) else {
            image = defaultImage
            return
        }
        kf.setImage(
            with: url,
            placeholder: .none,
            options: [
                .transition(ImageTransition.fade(0.5)),
                .backgroundDecode,
                .alsoPrefetchToMemory,
                .cacheMemoryOnly
            ]
        )
    }
}
