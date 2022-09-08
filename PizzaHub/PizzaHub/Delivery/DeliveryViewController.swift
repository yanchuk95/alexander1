//
//  DeliveryViewController.swift
//  PizzaHub
//
//  Created by User on 9/1/22.
//

import UIKit

class DeliveryViewController: UIViewController {

    @IBOutlet weak var adresLable: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var yoursPhone: UILabel!
    @IBOutlet weak var phoneNamberPrefix: UILabel!
    @IBOutlet weak var phoneNumberSyffix: UITextField!
    @IBOutlet weak var streetLable: UILabel!
    @IBOutlet weak var streetTexField: UITextField!
    @IBOutlet weak var houseLable: UILabel!
    @IBOutlet weak var houseTextField: UITextField!
    @IBOutlet weak var flatLable: UILabel!
    @IBOutlet weak var flatTextField: UITextField!
    @IBOutlet weak var frontDoorLable: UILabel!
    @IBOutlet weak var frontDoorTextField: UITextField!
    @IBOutlet weak var floorLable: UILabel!
    @IBOutlet weak var floorTextField: UITextField!
    @IBOutlet weak var intercomLable: UILabel!
    @IBOutlet weak var intercomTextField: UITextField!
    @IBOutlet weak var commentLable: UILabel!
    @IBOutlet weak var commentTextField: UITextField!
    @IBOutlet weak var payTypeLable: UILabel!
    @IBOutlet weak var cashPayButton: UIButton!
    @IBOutlet weak var cartPayButton: UIButton!
    @IBOutlet weak var onlinePayButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    

    
    

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

    }

    @IBAction func tapHideKeyBoard(_ sender: Any) {
        let HideKeyBoard = [nameTextField, phoneNumberSyffix, streetTexField, streetTexField, houseTextField, flatTextField, frontDoorTextField, floorTextField, intercomTextField, commentTextField]
        for item in HideKeyBoard {
            item?.resignFirstResponder()
        }
    }
    
    
    @IBAction func cashAct(_ sender: Any) {
        if self.cashPayButton.backgroundColor == .orange {
            self.cashPayButton.backgroundColor = .green
        } else {
            self.cashPayButton.backgroundColor = .orange
        }
        
    }
    
}






