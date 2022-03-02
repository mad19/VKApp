//
//  User.swift
//  VKApp
//
//  Created by Андрей Мишин on 28.02.2022.
//

import UIKit

struct User {
    let image: UIImage?
    let name: String
    let friends: [NewFriend]
}

struct NewFriend {
    let image: UIImage?
    let name: String
}

let newFriend = [
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Nazim"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Roota"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Johny"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Will"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Thor"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Loky"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Debra"),
    NewFriend(image: UIImage.init(systemName: "lasso"), name: "Ahmet")

]
