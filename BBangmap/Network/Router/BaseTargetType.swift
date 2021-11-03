//
//  BaseTargetType.swift
//  Network
//
//  Created by 오준현 on 2021/10/26.
//

import Moya

protocol BaseTargetType: TargetType { }

extension BaseTargetType {

    // TODO: baseURL 추가 시 설정
    var baseURL: URL {
        return URL(string: "")!
    }

    // MARK: 무조건 필요한 헤더값이 생길때마다 추가
    var headers: [String: String]? {
        let header = ["Content-Type": "application/json"]
        return header
    }

    var sampleData: Data {
        return Data()
    }

}
