//
//  ProductCatalogCellDelegate.swift
//
//
//  Created by hariharan
//


// ProductCatalogCell Delegate
protocol ProductCatalogCellDelegate: AnyObject {
  
  func didTapAddToCartButton(
    fromProductCatalogCell cell: ProductCatalogCell)
  
}
