//
//  Reactive+UIViewController.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/26.
//

import UIKit

import RxSwift
import RxCocoa

extension RxSwift.Reactive where Base: UIViewController {

    // MARK: 필요한 생명주기가 있을 때마다 추가
    public var viewDidLoad: Observable<Void> {
        return methodInvoked(#selector(UIViewController.viewDidLoad))
            .map { _ in }
    }

    public var viewWillAppear: Observable<Bool> {
        return methodInvoked(#selector(UIViewController.viewWillAppear))
            .map { $0.first as? Bool ?? false }
    }
}
