//
//  ProductCatalogViewControllerDelegate.swift
//
//
//  Created by hariharan
//


// ProductCatalogViewController Delegate
protocol ProductCatalogViewControllerDelegate: AnyObject {
  
  func didTapAddToCartButtonFromProductCatalogController(
    for product: Product)
  
}
