//
//  Location.swift
//  BucketList2
//
//  Created by Daniel Jesus Callisaya Hidalgo on 28/6/22.
//

import Foundation
import CoreLocation
struct Location: Identifiable
{
    let id : UUID
    let name : String
    var description: String
    let latitude: Double
    let longitude: Double
    var coordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    static let example = Location(id: UUID(), name: "Buckingham Palace", description: "Where Queen Elizabehts lives with her dorgis", latitude: 51.501, longitude: -0.141)
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}