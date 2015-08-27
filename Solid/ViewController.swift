//
//  ViewController.swift
//  Solid
//
//  Created by Matthew Hampel on 8/17/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let profile = loadProfile()
    print("I got this profile name: " + profile!.name)
    
    // Add buttons for the three options
    let button   = UIButton(type: UIButtonType.System) as UIButton
    button.frame = CGRectMake(100, 100, 100, 50)
    button.backgroundColor = UIColor.greenColor()
    button.setTitle(NSLocalizedString("food", comment: "Food"), forState: UIControlState.Normal)
    button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)

    let button2   = UIButton(type: UIButtonType.System) as UIButton
    button2.frame = CGRectMake(100, 180, 100, 50)
    button2.backgroundColor = UIColor.yellowColor()
    button2.setTitle(NSLocalizedString("impress", comment: "Something that will knock your socks off"), forState: UIControlState.Normal)
    button2.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
  
    // CGRectMake(<#T##x: CGFloat##CGFloat#>, y: CGFloat, <#T##width: CGFloat##CGFloat#>, <#T##height: CGFloat##CGFloat#>)
    let button3   = UIButton(type: UIButtonType.System) as UIButton
    button3.frame = CGRectMake(100, 260, 100, 50)
    button3.backgroundColor = UIColor.blueColor()
    button3.setTitle(NSLocalizedString("relax", comment: "Simple and calming"), forState: UIControlState.Normal)
    button3.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)

    self.view.addSubview(button)
    self.view.addSubview(button2)
    self.view.addSubview(button3)
    
  }
  
  func buttonAction(sender:UIButton!) {
    print("Button tapped")
    let locationViewController = self.storyboard?.instantiateViewControllerWithIdentifier("LocationViewControllerIdentifier") as? LocationChoiceViewController
    self.navigationController?.pushViewController(locationViewController!, animated: true)
  }
  
  // MARK: NSCoding
  
  func loadProfile() -> Profile? {
    return NSKeyedUnarchiver.unarchiveObjectWithFile(Profile.ArchiveURL.path!) as? Profile
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

