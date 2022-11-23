//	Created by Leopold Lemmermann on 20.10.22.

import InAppPurchaseService
import StoreKit

@available(iOS 15, macOS 12, *)
extension Purchase {
  init?(product: Product) {
    guard let id = PurchaseID(rawValue: product.id) else { return nil }
    
    self.init(
      id: id,
      name: product.displayName,
      desc: product.description,
      price: product.price
    )
  }
}