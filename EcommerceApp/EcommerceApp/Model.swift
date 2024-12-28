//
//  Model.swift
//  EcommerceApp
//
//  Created by VR on 11/11/24.
//

struct Category {
    var image: String
    var name: String
    var item: Item
}

struct Item {
    var image: String
    var price: String
    var imageList: [String]
    var text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
}



