//
//  NameEntryViewController.swift
//  SeguesViewModelsProtocols
//
//  Created by Tom Lokhorst on 2016-02-23.
//  Copyright © 2016 nonstrict. All rights reserved.
//

import UIKit
import SegueManager

class NameEntryViewController : UIViewController, SeguePerformer {

  lazy var segueManager: SegueManager = { SegueManager(viewController: self) }()

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    super.prepareForSegue(segue, sender: sender)
    segueManager.prepareForSegue(segue)
  }

  @IBOutlet weak var nameTextField: UITextField!

  @IBAction func continueAction(sender: UITextField) {
    guard let name = nameTextField.text else { return }

    self.performSegue(R.segue.nameEntryViewController.showBirthdateEntry) { segue in
      segue.destinationViewController.viewModel = name
    }
  }
}
