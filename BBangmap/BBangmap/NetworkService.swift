//
//  NetworkService.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/24.
//

import Network

final class NetworkService {
    static let shared = NetworkService()

    private init() { }

    let auth = AuthService()
}
