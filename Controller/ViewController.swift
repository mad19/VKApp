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
    
    @objc func hideScreen() {
        view.endEditing(true)
    }
    
    @objc func willShowKeyboard(_ notification: Notification) {
        guard let info = notification.userInfo as NSDictionary?,
              let keyboardSize = info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue else {return}
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
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
              login == "",
              password == "" else {
                  
                  show(mesasge: "Неверные данные")
                  return}
        
        performSegue(withIdentifier: "LoginSuccess", sender: nil)
    }
    


}

