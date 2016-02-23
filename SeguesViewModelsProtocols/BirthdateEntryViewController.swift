//
//  BirthdateEntryViewController.swift
//  SeguesViewModelsProtocols
//
//  Created by Tom Lokhorst on 2016-02-23.
//  Copyright © 2016 nonstrict. All rights reserved.
//

import UIKit
import SegueManager

class BirthdateEntryViewController : SegueManagerViewController {

  var viewModel: String!

  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var birthdatePicker: UIDatePicker!

  override func viewDidLoad() {
    super.viewDidLoad()

    textLabel.text = "Hi, \(viewModel)!"
  }

  @IBAction func continueAction(sender: UITextField) {
    let summary = SummaryViewController.ViewModel(name: viewModel, birthdate: birthdatePicker.date)

    self.performSegue(R.segue.birthdateEntryViewController.showSummary) { segue in
      segue.destinationViewController.viewModel = summary
    }
  }
}
