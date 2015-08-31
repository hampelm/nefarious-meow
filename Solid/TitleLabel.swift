//
//  TitleLabel.swift
//  Solid
//
//  Created by Matthew Hampel on 8/31/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import Foundation
import UIKit

class TitleLabel: UILabel {
  
  
  override func drawLayer(layer: CALayer, inContext ctx: CGContext) {
    print("Drawing custom TitleLabel layer")
    self.backgroundColor = UIColor.yellowColor()
    super.drawLayer(layer, inContext: ctx)
  }
  
  // These don't work; leaving for future experimentation on other settings
  /*
  override func drawRect(rect: CGRect) {
  print("I'm using the TitleLabel settings")
  self.backgroundColor = UIColor.yellowColor()
  super.drawRect(rect)
  }
  */
  
  /*
  override func drawTextInRect(rect: CGRect) {
    print("I'm using the TitleLabel settings")
    self.backgroundColor = UIColor.yellowColor()
    super.drawTextInRect(rect)
  }*/
}