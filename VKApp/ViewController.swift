//
//  ViewController.swift
//  VKApp
//
//  Created by Андрей Мишин on 06.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    }
    
    
    @IBAction func tapButton(_ sender: Any) {
        guard let login = loginField.text,
              let password = passwordField.text,
              login == "admin",
              password == "123456" else {
                  
                  show(mesasge: "Неверные данные")
                  return}
        
        performSegue(withIdentifier: "LoginSuccess", sender: nil)
    }
    


}

