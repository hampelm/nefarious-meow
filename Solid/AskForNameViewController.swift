//
//  AskForNameViewController.swift
//  Solid
//
//  Created by Matthew Hampel on 8/25/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import UIKit

class AskForNameViewController: UIViewController {

  
  private let nameField = UITextField()
  var profile = Profile(name: "Hello world name")

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Add the name select field
    let width = self.view.frame.width
    nameField.frame = CGRect(x: Design.X_GUTTER, y: Design.ROW_HEIGHT, width: width - (Design.X_GUTTER * 2), height: 30)
    nameField.layer.borderColor = Design.BORDER_COLOR.CGColor
    nameField.layer.borderWidth = 2.0
    
    let profile = loadProfile()
    if profile != nil {
      nameField.text = profile!.name
    }
    
    nameField.becomeFirstResponder()
    self.view.addSubview(nameField)
    
    // Add a submit button
    let submitButton = UIButton(frame: CGRect(x: Design.X_GUTTER, y: Design.ROW_HEIGHT * 2 + Design.X_GUTTER, width: width - (Design.X_GUTTER * 2), height: 30))
    submitButton.setTitle(NSLocalizedString("getStarted", comment: "Go to the app intro page"), forState: UIControlState.Normal)
    submitButton.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
    self.view.addSubview(submitButton)
  }
  
  func buttonAction(sender:UIButton!) {
    print("Button tapped")
    print(nameField.text)
    self.profile!.name = nameField.text!
    
    saveProfile()
    
    performSegueWithIdentifier("goToRoot", sender: nil)
  }
  
  // MARK: NSCoding
  func saveProfile() {
    let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(self.profile!, toFile: Profile.ArchiveURL.path!)
    
    if !isSuccessfulSave {
      print("Failed to save profile")
      // TODO log this
    }
  }

  func loadProfile() -> Profile? {
    return NSKeyedUnarchiver.unarchiveObjectWithFile(Profile.ArchiveURL.path!) as? Profile
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
