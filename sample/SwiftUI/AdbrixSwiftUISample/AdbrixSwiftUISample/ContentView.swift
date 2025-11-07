//
//  ContentView.swift
//  AdbrixSwiftUISample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import SwiftUI
import AdbrixSDK

struct ContentView: View {
    
    //MARK: Adbrix
    private func adbrixLogin() {
        Adbrix.shared().logEvent(
            ABEvent.LOGIN
        )
    }
    
    private func adbrixPurchase() {
        let products: [[String: Any]] = [
            [
                ABEventProperty.ITEM_PRODUCT_ID: "상품번호",
                ABEventProperty.ITEM_PRODUCT_NAME: "상품이름",
                ABEventProperty.ITEM_PRICE: 5000.0,
                ABEventProperty.ITEM_QUANTITY: 5,
                ABEventProperty.ITEM_DISCOUNT: 500.0,
                ABEventProperty.ITEM_CATEGORY1: "식품",
                ABEventProperty.ITEM_CATEGORY2: "과자",
            ]
        ]
        Adbrix.shared().logEvent(
            name: ABEvent.PURCHASE,
            properties: [
                ABEventProperty.ORDER_ID: "주문번호",
                ABEventProperty.ORDER_SALES: 25500.0,
                ABEventProperty.PAYMENT_METHOD: ABPaymentMethod.BANK_TRANSFER,
                ABEventProperty.DELIVERY_CHARGE: 3000.0,
                ABEventProperty.ITEMS: products
            ]
        )
    }
    
    private func adbrixCustom() {
        Adbrix.shared().logEvent(
            name: "custom_event",
            properties: [
                "custom_property_1": 34000,
                "custom_property_2": 42.195,
                "custom_property_3": "Seoul",
                "custom_property_4": true
            ]
        )
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("LogEvent").font(.title).bold()
                Group {
                    Button("Login") {
                        print("Login")
                        adbrixLogin()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())

                    Button("Purchase") {
                        print("Purchase")
                        adbrixPurchase()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())

                    Button("Custom Event") {
                        print("Custom Event")
                        adbrixCustom()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                }

            }
            .padding(20)
        }
    }
}
