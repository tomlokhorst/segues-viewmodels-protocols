//
//  BirthdateEntryViewController.swift
//  SeguesViewModelsProtocols
//
//  Created by Tom Lokhorst on 2016-02-23.
//  Copyright © 2016 nonstrict. All rights reserved.
//

import UIKit

class BirthdateEntryViewController : UIViewController {

  var viewModel: String!

  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var birthdatePicker: UIDatePicker!

  override func viewDidLoad() {
    super.viewDidLoad()

    textLabel.text = "Hi, \(viewModel)!"
  }

  @IBAction func continueAction(sender: UITextField) {
    self.performSegueWithIdentifier(R.segue.birthdateEntryViewController.showSummary, sender: nil)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let summaryVC = segue.destinationViewController as? SummaryViewController else {
      // Should never happen!
      return
    }

    let summary = SummaryViewController.ViewModel(name: viewModel, birthdate: birthdatePicker.date)

    summaryVC.viewModel = summary
  }
}
