//
//  SplashViewController.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/09.
//

import UIKit

final class SplashViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        present()
    }

    private func present() {
        let viewController = TabBarController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: false)
    }
}
