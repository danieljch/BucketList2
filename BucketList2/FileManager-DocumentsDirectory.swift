//
//  FileManager-DocumentsDirectory.swift
//  BucketList2
//
//  Created by Daniel Jesus Callisaya Hidalgo on 5/7/22.
//

import Foundation
extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
