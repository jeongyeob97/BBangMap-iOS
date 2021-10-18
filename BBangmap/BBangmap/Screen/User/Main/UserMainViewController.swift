//
//  UserMainViewController.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/17.
//

import UIKit

final class UserMainViewController: BaseViewController {

    override init() {
        super.init()
        setupNavigationBar()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func setupNavigationBar() {
        title = "My"
    }

}
