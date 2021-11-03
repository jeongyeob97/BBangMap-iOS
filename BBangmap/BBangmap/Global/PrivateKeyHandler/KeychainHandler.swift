//
//  KeychainHandler.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/26.
//

import SwiftKeychainWrapper

struct KeychainHandler {
    static var shared = KeychainHandler()
    private init() {}

    private let keychain = KeychainWrapper.standard
    private let userIDKey = "userID"

    var userID: Int {
        get {
            return keychain.integer(forKey: userIDKey) ?? -1
        }
        set {
            keychain.set(newValue, forKey: userIDKey)
        }
    }

    func logout() {
        keychain.remove(forKey: KeychainWrapper.Key(rawValue: userIDKey))
    }

    func removeAllKeys() {
        keychain.removeAllKeys()
    }
}
