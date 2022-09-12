//
//  DeliveryViewController.swift
//  PizzaHub
//
//  Created by User on 9/1/22.
//

import UIKit
import CoreData

class DeliveryViewController: UIViewController {

    @IBOutlet private weak var adresLable: UILabel!
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var yoursPhone: UILabel!
    @IBOutlet private weak var phoneNamberPrefix: UILabel!
    @IBOutlet private weak var phoneNumberSyffix: UITextField!
    @IBOutlet private weak var streetLable: UILabel!
    @IBOutlet private weak var streetTexField: UITextField!
    @IBOutlet private weak var houseLable: UILabel!
    @IBOutlet private weak var houseTextField: UITextField!
    @IBOutlet private weak var flatLable: UILabel!
    @IBOutlet private weak var flatTextField: UITextField!
    @IBOutlet private weak var frontDoorLable: UILabel!
    @IBOutlet private weak var frontDoorTextField: UITextField!
    @IBOutlet private weak var floorLable: UILabel!
    @IBOutlet private weak var floorTextField: UITextField!
    @IBOutlet private weak var intercomLable: UILabel!
    @IBOutlet private weak var intercomTextField: UITextField!
    @IBOutlet private weak var commentLable: UILabel!
    @IBOutlet private weak var commentTextField: UITextField!
    @IBOutlet private weak var payTypeLable: UILabel!
    @IBOutlet private weak var cashPayButton: UIButton!
    @IBOutlet private weak var cartPayButton: UIButton!
    @IBOutlet private weak var onlinePayButton: UIButton!
    @IBOutlet private weak var saveButton: UIButton!
    
    private let userDefaults = UserDefaults.standard
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let textFieldSettings = [nameTextField, phoneNumberSyffix, streetTexField, houseTextField, flatTextField, frontDoorTextField, floorTextField, intercomTextField, commentTextField]
        
        for itemTF in textFieldSettings {
            itemTF?.layer.borderWidth = 1
            itemTF?.layer.cornerRadius = 10
            itemTF?.backgroundColor = .white
        }
        
        self.adresLable.text = "Адрес доставки"
        self.nameTextField.placeholder = "Введите имя"

        self.yoursPhone.text = "Ваш мобильный телефон"
        self.phoneNamberPrefix.text = "+375"
        self.phoneNumberSyffix.placeholder = "Введите номер"
        self.phoneNumberSyffix.keyboardType = .numberPad

        self.streetLable.text = "Улица"
        self.streetTexField.placeholder = "Введите улицу"
        self.houseLable.text = "Дом"
        self.flatLable.text = "Квартира"
        self.frontDoorLable.text = "Подъезд"
        self.floorLable.text = "Этаж"
        self.intercomLable.text = "Домофон"
        self.commentLable.text = "Комментарий к заказу"
        
        let buttonSettings = [cashPayButton,cartPayButton, onlinePayButton, saveButton]
        
        for itemButton in buttonSettings {
            itemButton?.setTitleColor(.white, for: .normal)
            itemButton?.layer.cornerRadius = 10
            itemButton?.backgroundColor = .orange
        }
        
        self.payTypeLable.text = "Комментарий к заказу"
        self.cashPayButton.setTitle("Наличные", for: .normal)
        self.cartPayButton.setTitle("Картой", for: .normal)
        self.onlinePayButton.setTitle("Онлайн", for: .normal)
        self.saveButton.setTitle("Онлайн", for: .normal)
        
//        nameTextField.text = userDefaults.string(forKey: "name")
    }

    @IBAction private func tapHideKeyBoard(_ sender: Any) {
        let HideKeyBoard = [nameTextField, phoneNumberSyffix, streetTexField, streetTexField, houseTextField, flatTextField, frontDoorTextField, floorTextField, intercomTextField, commentTextField]
        for item in HideKeyBoard {
            item?.resignFirstResponder()
        }
    }
    
    @IBAction private func cashAct(_ sender: Any) {
        if self.cashPayButton.backgroundColor == .orange {
            self.onlinePayButton.backgroundColor = .orange
            self.cartPayButton.backgroundColor = .orange
            self.cashPayButton.backgroundColor = .green
        } else {
            self.cashPayButton.backgroundColor = .orange
        }
    }
    
    @IBAction private func cartAct(_ sender: Any) {
        if self.cartPayButton.backgroundColor == .orange {
            self.cashPayButton.backgroundColor = .orange
            self.onlinePayButton.backgroundColor = .orange
            self.cartPayButton.backgroundColor = .green
        } else {
            self.cartPayButton.backgroundColor = .orange
        }
    }
    
    @IBAction private func onlineAct(_ sender: Any) {
        if self.onlinePayButton.backgroundColor == .orange {
            self.cashPayButton.backgroundColor = .orange
            self.cartPayButton.backgroundColor = .orange
            self.onlinePayButton.backgroundColor = .green
        } else {
            self.onlinePayButton.backgroundColor = .orange
        }
    }
    
    @IBAction private func saveButton(_ sender: Any) {
        userDefaults.setValue(nameTextField.text, forKey: UserDefaultsKeys.keyForName)
        userDefaults.setValue(phoneNumberSyffix.text, forKey: UserDefaultsKeys.keyForNumber)
        userDefaults.setValue(streetTexField.text, forKey: UserDefaultsKeys.keyForStreet)
        userDefaults.setValue(houseTextField.text, forKey: UserDefaultsKeys.keyForHouse)
        userDefaults.setValue(flatTextField.text, forKey: UserDefaultsKeys.keyForFlat)
        userDefaults.setValue(frontDoorTextField.text, forKey: UserDefaultsKeys.keyForFrontDoor)
        userDefaults.setValue(floorTextField.text, forKey: UserDefaultsKeys.keyForFloor)
        userDefaults.setValue(intercomTextField.text, forKey: UserDefaultsKeys.keyForIntercom)
        userDefaults.setValue(commentTextField.text, forKey: UserDefaultsKeys.keyForComment)
    }
    
}
    
    







