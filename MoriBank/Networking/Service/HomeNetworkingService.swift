//
//  HomeNetworkingService.swift
//  MoriBank
//
//  Created by Caio Mori on 16/01/25.
//

import Foundation

protocol HomeServiceable {
    func getHome() async throws -> Result<HomeModel?, RequestError>
}

struct HomeNetworkingService: HTTPClient, HomeServiceable {
    
    func getHome() async throws -> Result<HomeModel?, RequestError> {
        return await sendRequest(endpoint: HomeEndpoint.get, responseModel: HomeModel.self)
    }
}


class HomeModel: NSObject, Codable {
    
    private(set) var header: Header
    
    struct Header: Codable {
        var title: String
    }
}
