//
//  enumSymbols + extension.swift
//  VKApp
//
//  Created by Андрей Мишин on 01.03.2022.
//

import UIKit

var configure = UIImage.SymbolConfiguration(pointSize: 50)

enum Assets: String {
    case globe = "globe"
    case pencil = "pencil"
    case moon = "moon.zzz"
    case homepod = "homepod.2"
    
}


extension Assets {
    
    var image: UIImage {
        UIImage.init(systemName: self.rawValue, withConfiguration: configure)!
    }
}
