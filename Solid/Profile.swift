//
//  Profile.swift
//  Solid
//
//  Created by Matthew Hampel on 8/25/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import Foundation

class Profile: NSObject, NSCoding {
  
  // MARK: Properties
  var name: String
  
  // MARK: Types
  struct PropertyKey {
    static let nameKey = "name"
  }
  
  // MARK: Archiving Paths
  static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
  static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("profiles")
  
  // MARK: Init
  init?(name: String) {
    self.name = name
    super.init()
    
    // Fail if there's no name
    if name.isEmpty {
      return nil
    }
  }
  
  // MARK: NSCoding
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(name, forKey: PropertyKey.nameKey)
  }
  
  required convenience init?(coder aDecoder: NSCoder) {
    let name = aDecoder.decodeObjectForKey(PropertyKey.nameKey) as! String
    self.init(name: name)
  }
}