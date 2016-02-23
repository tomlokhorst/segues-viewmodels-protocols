//
//  SummaryViewController.swift
//  SeguesViewModelsProtocols
//
//  Created by Tom Lokhorst on 2016-02-23.
//  Copyright © 2016 nonstrict. All rights reserved.
//

import UIKit

class SummaryViewController : UIViewController, ViewModelContaining {

  typealias ViewModelType = ViewModel!

  var viewModel: ViewModel!

  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    let today = NSDate()
    let dateComponents = NSCalendar.currentCalendar()
      .components(.Year, fromDate: viewModel.birthdate, toDate: today, options: [])

    label.text = "Hi \(viewModel.name), you're \(dateComponents.year) already!"
  }
}

extension SummaryViewController {

  struct ViewModel {
    let name: String
    let birthdate: NSDate
  }

}
