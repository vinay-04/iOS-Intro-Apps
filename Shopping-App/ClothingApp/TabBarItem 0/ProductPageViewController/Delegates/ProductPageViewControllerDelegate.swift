//
//  ProductPageViewControllerDelegate.swift
//
//
//  Created by hariharan
//


// ProductPageViewController Delegate
protocol ProductPageViewControllerDelegate: AnyObject {
  
  func didTapAddToCartButtonFromProductPage(
    for product: Product)
  
}

