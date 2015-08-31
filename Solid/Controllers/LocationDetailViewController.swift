//
//  LocationDetailViewController.swift
//  Solid
//
//  Created by Matthew Hampel on 8/21/15.
//  Copyright © 2015 Matthew Hampel. All rights reserved.
//

import UIKit

/**
Show details of a location
Maybe it's a restaurant, or a bar, or a park
Usually accessed via the LocationChoiceViewController
*/
class LocationDetailViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Add the restaurant name
    let restaurantName = TitleLabel()
    let makeMeACalculatedVariable = CGFloat(250)
    restaurantName.frame = CGRectMake(Design.ROW_HEIGHT + Design.X_GUTTER, 0, makeMeACalculatedVariable, Design.ROW_HEIGHT)
    restaurantName.text = "Umi Sushi"
    self.view.addSubview(restaurantName)
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
