//
//  MapMainViewContorller.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/17.
//

import UIKit

import NMapsMap

final class MapMainViewContorller: BaseViewController {

    override init() {
        super.init()
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func setup() {
        title = "맵"
    }
}
