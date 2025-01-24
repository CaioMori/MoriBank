//
//  HomeModel.swift
//  MoriBank
//
//  Created by Caio Mori on 24/01/25.
//

import Foundation

class HomeModel: NSObject, Decodable {
    
    private(set) var header: Header
    
    struct Header: Decodable {
        var title: TextModel
    }
}

