//
//  postData.swift
//  HackerNews
//
//  Created by MUNAVAR PM on 03/05/23.
//

import Foundation

    // before the decoding the data that in networkManager that data being organazed in struture to represent the all properties.
struct Results: Decodable {
    // In the decodable poperties only have an single that was 'hits'. And put that hits in array formate of [Post] object
    let hits: [Post]
}
struct Post: Decodable,Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
    // Then we create an data the we can go for Decoding data
