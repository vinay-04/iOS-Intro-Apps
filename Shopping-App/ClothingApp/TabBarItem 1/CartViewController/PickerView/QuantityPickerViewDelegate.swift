//
//  QuantityPickerViewDelegate.swift
//
//
//  Created by hariharan
//


// QuantityPickerView Delegate

protocol QuantityPickerViewDelegate: AnyObject {
  
  // ToolBar button actions
  func didTapDoneButtonOnToolBar()
  func didTapCancelButtonOnToolBar()
  
  // Picker update
  func didUpdatePickerView(with value: Int)
  
}
