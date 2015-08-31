//
//  LocationChoiceViewController.swift
//  Solid
//
//  Created by Matthew Hampel on 8/18/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import UIKit

class LocationChoiceViewController: UIViewController {
  
  // MARK: Gesture recognizers
  
  let swipeRecognizer = UISwipeGestureRecognizer()
  
  // MARK: UI

  override func viewDidLoad() {
    super.viewDidLoad()
    print("Hello, I'm loading")
    
    // Add the gesture recognizers
    
    // Greet the user
    let greeting = UILabel()
    greeting.frame = CGRectMake(Design.X_GUTTER, 40, 100, 50) // TODO: Position relative to parent top?
    greeting.backgroundColor = UIColor.greenColor()
    greeting.text = NSLocalizedString("welcome", comment: "Greet the user")
    self.view.addSubview(greeting)
    
    // TODO: Show the madlibs-style intro
    // Ideas: 
    // http://stackoverflow.com/questions/22162322/method-to-display-uilabels-and-uibuttons-inline-with-each-other
    // http://stackoverflow.com/questions/10287175/programming-multiline-mixed-uiview-types-text
    
    // Add a fake place
    let top_offset = CGFloat(40 + 50)
    let restaurant = LocationListItemView(frame: CGRectMake(Design.X_GUTTER, top_offset, self.parentViewController!.view.frame.size.width, Design.ROW_HEIGHT))
    restaurant.userInteractionEnabled = true
    
    let tapRecognizer = UITapGestureRecognizer()
    tapRecognizer.addTarget(self, action: "tappedView")
    restaurant.addGestureRecognizer(tapRecognizer)
    self.view.addSubview(restaurant)
    
    // Add another fake place
    let restaurant2 = LocationListItemView(frame: CGRectMake(Design.X_GUTTER, top_offset + Design.ROW_HEIGHT + 10, self.parentViewController!.view.frame.size.width, Design.ROW_HEIGHT))
    restaurant2.userInteractionEnabled = true
    
    // Super verbose -- you can only add a tap gesture recognizer to one view.
    let restaurant2TapRecognizer = UITapGestureRecognizer()
    restaurant2TapRecognizer.addTarget(self, action: "tappedView")
    restaurant2.addGestureRecognizer(restaurant2TapRecognizer)
    self.view.addSubview(restaurant2)
  }
  
  func tappedView() {
    // let tapAlert = UIAlertController(title: "Tapped", message: "You just tapped the tap view", preferredStyle: UIAlertControllerStyle.Alert)
    // tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
    // self.presentViewController(tapAlert, animated: true, completion: nil)
    
    print("Tapped!")
    
    // TODO: How to figure out the sender?
    // Maybe like this? 
    // http://stackoverflow.com/questions/2788870/find-which-child-view-was-tapped-when-using-uitapgesturerecognizer
    // let view = ...
    
    
    let locationDetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("LocationDetailViewControllerIdentifier") as? LocationDetailViewController
    self.navigationController?.pushViewController(locationDetailViewController!, animated: true)

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
  }
  */

}
