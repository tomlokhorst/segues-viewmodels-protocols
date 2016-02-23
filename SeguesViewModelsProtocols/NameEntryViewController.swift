//
//  NameEntryViewController.swift
//  SeguesViewModelsProtocols
//
//  Created by Tom Lokhorst on 2016-02-23.
//  Copyright © 2016 nonstrict. All rights reserved.
//

import UIKit

class NameEntryViewController : UIViewController {

  @IBOutlet weak var nameTextField: UITextField!

  @IBAction func continueAction(sender: UITextField) {
    guard let _ = nameTextField.text else { return }

    self.performSegueWithIdentifier("showBirthdateEntry", sender: nil)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if let birthdateEntryVC = segue.destinationViewController as? BirthdateEntryViewController
      where segue.identifier == "showBirthdateEntry"
    {
      // Should never happen!
      guard let name = nameTextField.text else { return }

      birthdateEntryVC.viewModel = name
    }
  }
}
