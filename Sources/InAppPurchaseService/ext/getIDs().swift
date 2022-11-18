//	Created by Leopold Lemmermann on 18.11.22.

public extension InAppPurchaseService {
  func getPurchaseIDs<ID: PurchaseID>(isPurchased: Bool) -> [ID] {
    getPurchases(isPurchased: isPurchased)
      .compactMap { $0.getPurchaseID() }
  }
}
