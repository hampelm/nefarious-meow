//
//  SampleSubView.swift
//  Solid
//
//  Created by Matthew Hampel on 8/20/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import UIKit

class LocationListItemView: UIView {

  // Only override drawRect: if you perform custom drawing.
  // An empty implementation adversely affects performance during animation.
  override func drawRect(rect: CGRect) {
    Logger(text: "loaded sub view")
    
    self.backgroundColor = UIColor(white: 0, alpha: 0)
    
    // Add the restaurant image
    let restaurantImage = UIImage(named: "Restaurant")
    let restaurantImageView = UIImageView(frame: CGRectMake(0, 0, Design.ROW_HEIGHT, Design.ROW_HEIGHT))
    restaurantImageView.image = restaurantImage
    restaurantImageView.contentMode = UIViewContentMode.ScaleToFill
    restaurantImageView.clipsToBounds = true
    restaurantImageView.layer.cornerRadius = Design.CORNER_RADIUS
    self.addSubview(restaurantImageView)
    
    // Add the restaurant name
    let restaurantName = UILabel()
    let makeMeACalculatedVariable = CGFloat(250)
    restaurantName.frame = CGRectMake(Design.ROW_HEIGHT + Design.X_GUTTER, 0, makeMeACalculatedVariable, Design.ROW_HEIGHT)
    restaurantName.backgroundColor = UIColor.blueColor()
    restaurantName.text = "Umi Sushi"
    self.addSubview(restaurantName)
  }
}
