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

    self.performSegueWithIdentifier(R.segue.nameEntryViewController.showBirthdateEntry, sender: nil)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if let segue = R.segue.nameEntryViewController.showBirthdateEntry(segue: segue) {

      // Should never happen!
      guard let name = nameTextField.text else { return }

      segue.destinationViewController.viewModel = name
    }
  }
}
