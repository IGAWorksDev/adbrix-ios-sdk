//
//  ViewController.swift
//  SwiftSample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import UIKit
import AppTrackingTransparency
import AdbrixSDK

class ViewController: UIViewController {
    
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
    //MARK: ATT
    override func viewDidAppear(_ animated: Bool) {
        ATTrackingManager.requestTrackingAuthorization { status in
            switch status {
            case .notDetermined:
                Adbrix.shared().attAuthorized(false)
            case .restricted:
                Adbrix.shared().attAuthorized(false)
            case .denied:
                Adbrix.shared().attAuthorized(false)
            case .authorized:
                Adbrix.shared().attAuthorized(true)
            @unknown default:
                Adbrix.shared().attAuthorized(false)
            }
        }
    }
    
    //MARK: UI
    
    private let scroll = UIScrollView()
    private let stack  = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        stack.axis = .vertical
        stack.spacing = 16
        
        view.addSubview(scroll)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        scroll.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: scroll.topAnchor, constant: 16),
            stack.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            stack.widthAnchor.constraint(equalTo: scroll.widthAnchor)
        ])
        
        addSection("LogEvent") {
            self.button("Login") { _ in
                print("Login")
                self.adbrixLogin()
            }
            self.button("Purchase") { _ in
                print("Purchase")
                self.adbrixPurchase()
            }
            self.button("Custom Event") { _ in
                print("Custom Event")
                self.adbrixCustom()
            }
        }
    }
    
    private func addSection(_ title: String, builder: () -> Void) {
        let label = UILabel()
        label.text = title
        label.font = .systemFont(ofSize: 28, weight: .bold)
        stack.addArrangedSubview(label)
        builder()
    }
    
    @discardableResult
    private func button(_ title: String, action: @escaping UIActionHandler) -> UIButton {
        let b = UIButton(type: .system, primaryAction: UIAction(handler: action))
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.filled()
            config.title = title
            config.baseBackgroundColor = .systemPurple
            config.baseForegroundColor = .white
            config.cornerStyle = .capsule
            config.contentInsets = NSDirectionalEdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20)
            b.configuration = config
        } else {
            b.setTitle(title, for: .normal)
            b.backgroundColor = .systemPurple
            b.setTitleColor(.white, for: .normal)
            b.layer.cornerRadius = 24
            b.contentEdgeInsets = UIEdgeInsets(top: 14, left: 20, bottom: 14, right: 20)
        }
        b.heightAnchor.constraint(greaterThanOrEqualToConstant: 48).isActive = true
        stack.addArrangedSubview(b)
        return b
    }
    
    
}

