//
//  SampleSubView.swift
//  Solid
//
//  Created by Matthew Hampel on 8/20/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import UIKit

class SampleSubView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
            print("loaded sub view")
            
            let greeting = UILabel()
            greeting.frame = CGRectMake(100, 100, 100, 50)
            greeting.backgroundColor = UIColor.blueColor()
            greeting.text = "Restaurant view here"
            self.addSubview(greeting)
    
    }
}
