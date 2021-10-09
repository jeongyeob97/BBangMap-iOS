//
//  BaseViewController.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/09.
//

import UIKit

import RxSwift

class BaseViewController: UIViewController {

    let disposeBag = DisposeBag()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        render()
    }

    private func render() {
        view.backgroundColor = .white
    }
}
