//
//  Posts.swift
//  experiment
//
//  Created by Bhoma Ram on 27/12/24.
//

import Foundation

struct Posts: Decodable{
    let userId: Int
    let id: Int
    let title: String
    let body: String;
}
