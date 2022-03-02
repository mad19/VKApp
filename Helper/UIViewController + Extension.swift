//
//  UIViewController + Extension.swift
//  VKApp
//
//  Created by Андрей Мишин on 21.02.2022.
//

import UIKit

extension UIViewController {
    
    func show(mesasge: String) {
        
        let alert = UIAlertController(title: "Ошибка входа", message: mesasge, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    
}
