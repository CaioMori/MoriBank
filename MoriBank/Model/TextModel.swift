//
//  TextModel.swift
//  MoriBank
//
//  Created by Caio Mori on 24/01/25.
//

import Foundation

struct TextModel: Decodable {
    
    private enum CodingKeys: String, CodingKey {
        case text
        case fontSize = "font_size"
        case color
    }
    
    private(set) var text: String
    private(set) var fontSize: Int
    private(set) var color: String
}
