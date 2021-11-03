//
//  UserDefaultHandler.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/26.
//

import Foundation

struct UserDefaultHandler {
    static var shared = UserDefaultHandler()

    private init() {}

    private let user = UserDefaults.standard

    private let isInitialUserKey = "isInitialUser"

    var isInitalUserKey: Bool {
        get {
            return user.bool(forKey: isInitialUserKey)
        }
        set {
            return user.setValue(newValue, forKey: isInitialUserKey)
        }
    }
}
