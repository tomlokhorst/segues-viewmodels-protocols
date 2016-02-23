//
//  ViewModelContaining.swift
//  SeguesViewModelsProtocols
//
//  Created by Tom Lokhorst on 2016-02-23.
//  Copyright © 2016 nonstrict. All rights reserved.
//

import SegueManager
import Rswift

protocol ViewModelContaining {
  associatedtype ViewModelType

  var viewModel: ViewModelType { get set }
}

extension SeguePerformer {
  func performSegue<Segue, Destination where Destination : ViewModelContaining>(
    segueIdentifier: StoryboardSegueIdentifier<Segue, Self, Destination>,
    viewModel: Destination.ViewModelType)
  {
    self.performSegue(segueIdentifier) { segue in
      var destination = segue.destinationViewController
      destination.viewModel = viewModel
    }
  }
}
