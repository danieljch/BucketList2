//
//  Location.swift
//  BucketList2
//
//  Created by Daniel Jesus Callisaya Hidalgo on 28/6/22.
//

import Foundation
struct Location: Identifiable //, Codable, Equatable {
{
    let id : UUID
    let name : String
    var description: String
    let latitude: Double
    let longitude: Double
 
}
