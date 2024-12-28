//
//  CartProductCellDelegate.swift
//  
//
//  Created by hariharan
//


// CartProductCell Delegate

protocol CartProductCellDelegate: AnyObject {
  
  func didRemoveItemFromShoppingCart(from cell: CartProductCell)
  
  func didTapChangeQuantityButton(from cell: CartProductCell)
  
}
