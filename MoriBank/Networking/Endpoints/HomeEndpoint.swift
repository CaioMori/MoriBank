//
//  HomeEndpoint.swift
//  MoriBank
//
//  Created by Caio Mori on 16/01/25.
//

import Foundation

enum HomeEndpoint {
    case get
}

extension HomeEndpoint: Endpoint {
    var path: String {
        switch self {
        case .get:
            return "/home"
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .get:
            return .get
        }
    }
    
    var header: [String : String]? {
        switch self {
        case .get:
            return nil
        }
    }
    
    var body: [String : String]? {
        switch self {
        case .get:
            return nil
        }
    }
}
