//
//  Menu.swift
//  PizzaHub
//
//  Created by User on 8/23/22.
//

import Foundation
import UIKit

var pizzaBigMass: String = "0,8-0,9 кг"
var pizzaSmallMass: String = "0,6-0,7 кг"
var pizzaThinMass: String = "0,5-0,6 кг"

struct Product {
    var name: String
    var prise: Float
    var description: String?
    var mass: String?
    var calories: Int?
    var carbohydrates: Int?
    var protein: Int?
    var fats: Int?
    var image: UIImage
}

struct Group {
    var groups: [Group]?
    var name: String
    var products: [Product]?
    var image: UIImage
    
}

class Menu {
    var pizzaPriceExpensive: Float = 28.9
    var pizzaPriceChip: Float = 22.9
    var snacksPrise: Float = 9.9
    var sousePrice: Float = 0.9
    
    var groups = [Group]()
    
    init() {
        setup()
    }
    
    func setup() {

        let pizzaB0 = Product(name: "Карбонад, салями и грудинка", prise: pizzaPriceExpensive, description: "соус чеддер, варено-копченый карбонад (свинина), грудинка (свинина), варено-копченая салями, соленые огурцы, свежий лук, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2481, carbohydrates: 228, protein: 86, fats: 130, image: UIImage(named: "imgPizza0")!)
        let pizzaB1 = Product(name: "Пепперони и колбаски", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, охотничьи колбаски, свежие томаты, оливки, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2336, carbohydrates: 219, protein: 86, fats: 121, image: UIImage(named: "imgPizza1")!)
        let pizzaB2 = Product(name: "Салями с соусом чеддер", prise: pizzaPriceExpensive, description: "соус чеддер, варено-копченая салями, маринованные опята, свежий лук, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2473, carbohydrates: 228, protein: 81, fats: 134, image: UIImage(named: "imgPizza2")!)
        let pizzaB3 = Product(name: "Ранч пицца", prise: pizzaPriceExpensive, description: "американский соус ранч, филе цыпленка, ветчина, свежие томаты, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2239, carbohydrates: 217, protein: 81, fats: 115, image: UIImage(named: "imgPizza3")!)
        let pizzaB4 = Product(name: "Цыпленок барбекю", prise: pizzaPriceExpensive, description: "пицца-соус, грудинка (свинина), филе цыпленка, свежий лук, соус барбекю, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2015, carbohydrates: 224, protein: 86, fats: 83, image: UIImage(named: "imgPizza4")!)
        let pizzaB5 = Product(name: "Баварская", prise: pizzaPriceExpensive, description: "сладкий горчичный соус, охотничьи колбаски, свежие шампиньоны, свежий лук, свежие томаты, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2268, carbohydrates: 237, protein: 71, fats: 108, image: UIImage(named: "imgPizza5")!)
        let pizzaB6 = Product(name: "Гавайская", prise: pizzaPriceExpensive, description: "сырный соус, ветчина, филе цыпленка, ананасы, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2348, carbohydrates: 223, protein: 95, fats: 117, image: UIImage(named: "imgPizza6")!)
        let pizzaB7 = Product(name: "Грибная", prise: pizzaPriceExpensive, description: "чесночный соус, ветчина, свежие шампиньоны, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2231, carbohydrates: 212, protein: 83, fats: 114, image: UIImage(named: "imgPizza7")!)
        let pizzaB8 = Product(name: "Сырный цыпленок", prise: pizzaPriceExpensive, description: "сырный соус, филе цыпленка, свежие томаты, сыр моцарелла, базилик, кунжут", mass: pizzaBigMass, calories: 2348, carbohydrates: 216, protein: 103, fats: 119, image: UIImage(named: "imgPizza8")!)
        let pizzaB9 = Product(name: "Деревенская", prise: pizzaPriceExpensive, description: "американский соус ранч, грудинка (свинина), свежий лук, соленые огурцы, свежие шампиньоны, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2482, carbohydrates: 217, protein: 76, fats: 139, image: UIImage(named: "imgPizza9")!)
        let pizzaB10 = Product(name: "Колбаски барбекю", prise: pizzaPriceExpensive, description: "пицца-соус, охотничьи колбаски, свежий лук, свежие шампиньоны, грудинка (свинина), соленые огурцы, американский соус ранч, соус барбекю, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2379, carbohydrates: 228, protein: 79, fats: 121, image: UIImage(named: "imgPizza10")!)
        let pizzaB11 = Product(name: "Чесночный цыпленок", prise: pizzaPriceExpensive, description: "чесночный соус, филе цыпленка, грудинка (свинина), свежие томаты, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2464, carbohydrates: 211, protein: 86, fats: 139, image: UIImage(named: "imgPizza11")!)
        let pizzaB12 = Product(name: "Французский цыпленок", prise: pizzaPriceExpensive, description: "грибной соус, филе цыпленка, свежие шампиньоны, свежий лук, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2283, carbohydrates: 211, protein: 100, fats: 104, image: UIImage(named: "imgPizza12")!)
        let pizzaB13 = Product(name: "Итальянская", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, свежие шампиньоны, грудинка (свинина), маслины, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2253, carbohydrates: 202, protein: 79, fats: 120, image: UIImage(named: "imgPizza13")!)
        let pizzaB14 = Product(name: "Салями, ветчина и грибы", prise: pizzaPriceExpensive, description: "пицца-соус, свежие шампиньоны, варено-копченая салями, ветчина, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2084, carbohydrates: 218, protein: 92, fats: 90, image: UIImage(named: "imgPizza14")!)
        let pizzaB15 = Product(name: "Биф тейсти", prise: pizzaPriceExpensive, description: "соус гриль, грудинка (свинина), фарш (говядина), свежие томаты, листья салата, свежий лук, сыр моцарелла, базилик, кунжут", mass: pizzaBigMass, calories: 2425, carbohydrates: 216, protein: 83, fats: 135, image: UIImage(named: "imgPizza15")!)
        let pizzaB16 = Product(name: "Острая чили", prise: pizzaPriceExpensive, description: "острый перец халапеньо, чесночный соус, сладкий соус чили, пепперони, грудинка (свинина), свежий болгарский перец, сыр моцарелла, перец кайенский", mass: pizzaBigMass, calories: 2874, carbohydrates: 244, protein: 82, fats: 172, image: UIImage(named: "imgPizza16")!)
        let pizzaB17 = Product(name: "Кантри четыре сезона", prise: pizzaPriceExpensive, description: "грибной соус, варено-копченый карбонад (свинина), грудинка (свинина), маринованные опята, сыр фета, сыр дорблю, сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2658, carbohydrates: 210, protein: 103, fats: 147, image: UIImage(named: "imgPizza17")!)
        let pizzaB18 = Product(name: "Цыпленок дорблю", prise: pizzaPriceExpensive, description: "сырный соус,филе цыпленка, сыр дорблю (может отличаться от изображения на сайте), сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2659, carbohydrates: 209, protein: 119, fats: 148, image: UIImage(named: "imgPizza18")!)
        let pizzaB19 = Product(name: "Мясная", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, ветчина, фарш (говядина), грудинка (свинина), сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2379, carbohydrates: 205, protein: 99, fats: 127, image: UIImage(named: "imgPizza19")!)
        let pizzaB20 = Product(name: "Четыре сыра", prise: pizzaPriceExpensive, description: "сырный соус, сливочный сыр, сыр фета, сыр дорблю (может отличаться от изображения на сайте), сыр моцарелла, базилик", mass: pizzaBigMass, calories: 2642, carbohydrates: 213, protein: 88, fats: 158, image: UIImage(named: "imgPizza20")!)
        
        
        let pizzaS0 = Product(name: "Карбонад, салями и грудинка", prise: pizzaPriceExpensive, description: "соус чеддер, варено-копченый карбонад (свинина), грудинка (свинина), варено-копченая салями, соленые огурцы, свежий лук, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 2126, carbohydrates: 179, protein: 68, fats: 122, image: UIImage(named: "imgPizza0")!)
        let pizzaS1 = Product(name: "Пепперони и колбаски", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, охотничьи колбаски, свежие томаты, оливки, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1770, carbohydrates: 173, protein: 65, fats: 88, image: UIImage(named: "imgPizza1")!)
        let pizzaS2 = Product(name: "Салями с соусом чеддер", prise: pizzaPriceExpensive, description: "соус чеддер, варено-копченая салями, маринованные опята, свежий лук, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1957, carbohydrates: 180, protein: 63, fats: 107, image: UIImage(named: "imgPizza2")!)
        let pizzaS3 = Product(name: "Ранч пицца", prise: pizzaPriceExpensive, description: "американский соус ранч, филе цыпленка, ветчина, свежие томаты, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1959, carbohydrates: 170, protein: 81, fats: 124, image: UIImage(named: "imgPizza3")!)
        let pizzaS4 = Product(name: "Цыпленок барбекю", prise: pizzaPriceExpensive, description: "пицца-соус, грудинка (свинина), филе цыпленка, свежий лук, соус барбекю, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1519, carbohydrates: 171, protein: 65, fats: 62, image: UIImage(named: "imgPizza4")!)
        let pizzaS5 = Product(name: "Баварская", prise: pizzaPriceExpensive, description: "сладкий горчичный соус, охотничьи колбаски, свежие шампиньоны, свежий лук, свежие томаты, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1572, carbohydrates: 148, protein: 58, fats: 81, image: UIImage(named: "imgPizza5")!)
        let pizzaS6 = Product(name: "Гавайская", prise: pizzaPriceExpensive, description: "сырный соус, ветчина, филе цыпленка, ананасы, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1582, carbohydrates: 173, protein: 73, fats: 95, image: UIImage(named: "imgPizza6")!)
        let pizzaS7 = Product(name: "Грибная", prise: pizzaPriceExpensive, description: "чесночный соус, ветчина, свежие шампиньоны, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1764, carbohydrates: 165, protein: 64, fats: 92, image: UIImage(named: "imgPizza7")!)
        let pizzaS8 = Product(name: "Сырный цыпленок", prise: pizzaPriceExpensive, description: "сырный соус, филе цыпленка, свежие томаты, сыр моцарелла, базилик, кунжут", mass: pizzaSmallMass, calories: 1867, carbohydrates: 169, protein: 82, fats: 96, image: UIImage(named: "imgPizza8")!)
        let pizzaS9 = Product(name: "Деревенская", prise: pizzaPriceExpensive, description: "американский соус ранч, грудинка (свинина), свежий лук, соленые огурцы, свежие шампиньоны, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1839, carbohydrates: 167, protein: 58, fats: 100, image: UIImage(named: "imgPizza9")!)
        let pizzaS10 = Product(name: "Колбаски барбекю", prise: pizzaPriceExpensive, description: "пицца-соус, охотничьи колбаски, свежий лук, свежие шампиньоны, грудинка (свинина), соленые огурцы, американский соус ранч, соус барбекю, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1717, carbohydrates: 176, protein: 59, fats: 80, image: UIImage(named: "imgPizza10")!)
        let pizzaS11 = Product(name: "Чесночный цыпленок", prise: pizzaPriceExpensive, description: "чесночный соус, филе цыпленка, грудинка (свинина), свежие томаты, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1799, carbohydrates: 132, protein: 66, fats: 110, image: UIImage(named: "imgPizza11")!)
        let pizzaS12 = Product(name: "Французский цыпленок", prise: pizzaPriceExpensive, description: "грибной соус, филе цыпленка, свежие шампиньоны, свежий лук, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1802, carbohydrates: 164, protein: 77, fats: 84, image: UIImage(named: "imgPizza12")!)
        let pizzaS13 = Product(name: "Итальянская", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, свежие шампиньоны, грудинка (свинина), маслины, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1671, carbohydrates: 157, protein: 60, fats: 85, image: UIImage(named: "imgPizza13")!)
        let pizzaS14 = Product(name: "Салями, ветчина и грибы", prise: pizzaPriceExpensive, description: "пицца-соус, свежие шампиньоны, варено-копченая салями, ветчина, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1589, carbohydrates: 173, protein: 69, fats: 66, image: UIImage(named: "imgPizza14")!)
        let pizzaS15 = Product(name: "Биф тейсти", prise: pizzaPriceExpensive, description: "соус гриль, грудинка (свинина), фарш (говядина), свежие томаты, листья салата, свежий лук, сыр моцарелла, базилик, кунжут", mass: pizzaSmallMass, calories: 1831, carbohydrates: 169, protein: 61, fats: 99, image: UIImage(named: "imgPizza15")!)
        let pizzaS16 = Product(name: "Острая чили", prise: pizzaPriceExpensive, description: "острый перец халапеньо, чесночный соус, сладкий соус чили, пепперони, грудинка (свинина), свежий болгарский перец, сыр моцарелла, перец кайенский", mass: pizzaSmallMass, calories: 2187, carbohydrates: 186, protein: 62, fats: 130, image: UIImage(named: "imgPizza16")!)
        let pizzaS17 = Product(name: "Кантри четыре сезона", prise: pizzaPriceExpensive, description: "грибной соус, варено-копченый карбонад (свинина), грудинка (свинина), маринованные опята, сыр фета, сыр дорблю, сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 2087, carbohydrates: 166, protein: 78, fats: 115, image: UIImage(named: "imgPizza17")!)
        let pizzaS18 = Product(name: "Цыпленок дорблю", prise: pizzaPriceExpensive, description: "сырный соус,филе цыпленка, сыр дорблю (может отличаться от изображения на сайте), сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 2084, carbohydrates: 163, protein: 91, fats: 117, image: UIImage(named: "imgPizza18")!)
        let pizzaS19 = Product(name: "Мясная", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, ветчина, фарш (говядина), грудинка (свинина), сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 1770, carbohydrates: 159, protein: 73, fats: 91, image: UIImage(named: "imgPizza19")!)
        let pizzaS20 = Product(name: "Четыре сыра", prise: pizzaPriceExpensive, description: "сырный соус, сливочный сыр, сыр фета, сыр дорблю (может отличаться от изображения на сайте), сыр моцарелла, базилик", mass: pizzaSmallMass, calories: 2033, carbohydrates: 166, protein: 66, fats: 121, image: UIImage(named: "imgPizza20")!)
        
        
        let pizzaT3 = Product(name: "Ранч пицца", prise: pizzaPriceExpensive, description: "американский соус ранч, филе цыпленка, ветчина, свежие томаты, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1905, carbohydrates: 140, protein: 71, fats: 117, image: UIImage(named: "imgPizza3")!)
        let pizzaT4 = Product(name: "Цыпленок барбекю", prise: pizzaPriceExpensive, description: "пицца-соус, грудинка (свинина), филе цыпленка, свежий лук, соус барбекю, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1484, carbohydrates: 140, protein: 66, fats: 72, image: UIImage(named: "imgPizza4")!)
        let pizzaT5 = Product(name: "Баварская", prise: pizzaPriceExpensive, description: "сладкий горчичный соус, охотничьи колбаски, свежие шампиньоны, свежий лук, свежие томаты, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1565, carbohydrates: 150, protein: 55, fats: 81, image: UIImage(named: "imgPizza5")!)
        let pizzaT6 = Product(name: "Гавайская", prise: pizzaPriceExpensive, description: "сырный соус, ветчина, филе цыпленка, ананасы, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1621, carbohydrates: 141, protein: 68, fats: 86, image: UIImage(named: "imgPizza6")!)
        let pizzaT7 = Product(name: "Грибная", prise: pizzaPriceExpensive, description: "чесночный соус, ветчина, свежие шампиньоны, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1535, carbohydrates: 132, protein: 59, fats: 83, image: UIImage(named: "imgPizza7")!)
        let pizzaT8 = Product(name: "Сырный цыпленок", prise: pizzaPriceExpensive, description: "сырный соус, филе цыпленка, свежие томаты, сыр моцарелла, базилик, кунжут", mass: pizzaThinMass, calories: 1744, carbohydrates: 152, protein: 76, fats: 93, image: UIImage(named: "imgPizza8")!)
        let pizzaT9 = Product(name: "Деревенская", prise: pizzaPriceExpensive, description: "американский соус ранч, грудинка (свинина), свежий лук, соленые огурцы, свежие шампиньоны, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1801, carbohydrates: 139, protein: 54, fats: 111, image: UIImage(named: "imgPizza9")!)
        let pizzaT10 = Product(name: "Колбаски барбекю", prise: pizzaPriceExpensive, description: "пицца-соус, охотничьи колбаски, свежий лук, свежие шампиньоны, грудинка (свинина), соленые огурцы, американский соус ранч, соус барбекю, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1704, carbohydrates: 157, protein: 57, fats: 90, image: UIImage(named: "imgPizza10")!)
        let pizzaT11 = Product(name: "Чесночный цыпленок", prise: pizzaPriceExpensive, description: "чесночный соус, филе цыпленка, грудинка (свинина), свежие томаты, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1499, carbohydrates: 139, protein: 86, fats: 80, image: UIImage(named: "imgPizza11")!)
        let pizzaT12 = Product(name: "Французский цыпленок", prise: pizzaPriceExpensive, description: "грибной соус, филе цыпленка, свежие шампиньоны, свежий лук, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1573, carbohydrates: 134, protein: 75, fats: 75, image: UIImage(named: "imgPizza12")!)
        let pizzaT13 = Product(name: "Итальянская", prise: pizzaPriceExpensive, description: "пицца-соус, пепперони, свежие шампиньоны, грудинка (свинина), маслины, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 2253, carbohydrates: 202, protein: 79, fats: 120, image: UIImage(named: "imgPizza13")!)
        let pizzaT14 = Product(name: "Салями, ветчина и грибы", prise: pizzaPriceExpensive, description: "пицца-соус, свежие шампиньоны, варено-копченая салями, ветчина, сыр моцарелла, базилик", mass: pizzaThinMass, calories: 1388, carbohydrates: 141, protein: 62, fats: 61, image: UIImage(named: "imgPizza14")!)
        let pizzaT15 = Product(name: "Биф тейсти", prise: pizzaPriceExpensive, description: "соус гриль, грудинка (свинина), фарш (говядина), свежие томаты, листья салата, свежий лук, сыр моцарелла, базилик, кунжут", mass: pizzaThinMass, calories: 2425, carbohydrates: 216, protein: 83, fats: 135, image: UIImage(named: "imgPizza15")!)
        
        
        let snack0 = Product(name: "Тейсти пайк", prise: snacksPrise, description: "сыр моцарелла, соленые огурцы, соус гриль, грудинка (свинина)", mass: "0,3-0,35 кг", calories: 1145, carbohydrates: 93, protein: 35, fats: 67, image: UIImage(named: "imgSnacks0")!)
        let snack1 = Product(name: "Острый пайк", prise: snacksPrise, description: "сыр моцарелла, чесночный соус, свежий болгарский перец, пепперони, перец халапеньо", mass: "0,3-0,35 кг", calories: 1100, carbohydrates: 93, protein: 37, fats: 63, image: UIImage(named: "imgSnacks1")!)
        let snack2 = Product(name: "Пайк с грибами", prise: snacksPrise, description: "сыр моцарелла, чесночный соус, ветчина, шампиньоны гриль", mass: "0,3-0,35 кг", calories: 935, carbohydrates: 94, protein: 38, fats: 44, image: UIImage(named: "imgSnacks2")!)
        let snack3 = Product(name: "Барбекю пайк", prise: snacksPrise, description: "сыр моцарелла, сливочный сыр, варено-копченая салями, соленые огурцы, соус барбекю", mass: "0,3-0,35 кг", calories: 1014, carbohydrates: 102, protein: 38, fats: 48, image: UIImage(named: "imgSnacks3")!)
        
        
        let souse0 = Product(name: "Соус терияки", prise: sousePrice, calories: 21, carbohydrates: 16, protein: 0, fats: 8, image: UIImage(named: "imgSouses0")!)
        let souse1 = Product(name: "Соус сырный", prise: sousePrice, calories: 21, carbohydrates: 16, protein: 0, fats: 8, image: UIImage(named: "imgSouses1")!)
        let souse2 = Product(name: "Соус тысяча островов", prise: sousePrice, calories: 21, carbohydrates: 0, protein: 35, fats: 8, image: UIImage(named: "imgSouses2")!)
        let souse3 = Product(name: "Соус горчичный", prise: sousePrice, calories: 21, carbohydrates: 16, protein: 0, fats: 8, image: UIImage(named: "imgSouses3")!)
        let souse4 = Product(name: "Соус чесночный", prise: sousePrice, calories: 21, carbohydrates: 16, protein: 0, fats: 8, image: UIImage(named: "imgSouses4")!)
        let souse5 = Product(name: "Соус кисло-сладкий", prise: sousePrice, calories: 21, carbohydrates: 16, protein: 0, fats: 8, image: UIImage(named: "imgSouses5")!)
        let souse6 = Product(name: "Соус пармеджано", prise: sousePrice, calories: 21, carbohydrates: 16, protein: 0, fats: 8, image: UIImage(named: "imgSouses6")!)

        let pizzaBigArray = [pizzaB0, pizzaB1, pizzaB2, pizzaB3, pizzaB4, pizzaB5, pizzaB6, pizzaB7, pizzaB8, pizzaB9, pizzaB10, pizzaB11, pizzaB12, pizzaB13, pizzaB14, pizzaB15, pizzaB16, pizzaB17, pizzaB18, pizzaB19, pizzaB20]
        let pizzaSmallArray = [pizzaS0, pizzaS1, pizzaS2, pizzaS3, pizzaS4, pizzaS5, pizzaS6, pizzaS7, pizzaS8, pizzaS9, pizzaS10, pizzaS11, pizzaS12, pizzaS13, pizzaS14, pizzaS15, pizzaS16, pizzaS17, pizzaS18, pizzaS19, pizzaS20]
        let pizzaThinArray = [pizzaT3, pizzaT4, pizzaT5, pizzaT6, pizzaT7, pizzaT8, pizzaT9, pizzaT10, pizzaT11, pizzaT12, pizzaT13, pizzaT14, pizzaT15]
        let snackArray = [snack0, snack1, snack2, snack3]
        let souseArray = [souse0, souse1, souse2, souse3, souse4, souse5, souse6]
        
        let pizzaGroupBig = Group(groups: nil, name: "Большая пицца", products: pizzaBigArray, image: UIImage(named: "imgPizzaGroup")!)
        let pizzaGroupSmall = Group(groups: nil, name: "Маленькая пицца", products: pizzaSmallArray, image: UIImage(named: "imgPizzaGroup")!)
        let pizzaGroupThin = Group(groups: nil, name: "На тонком тесте", products: pizzaThinArray, image: UIImage(named: "imgPizzaGroup")!)
        let snackGroup0 = Group(groups: nil, name: "Закуски", products: snackArray, image: UIImage(named: "imgSnacks0")!)
        let souseGroup0 = Group(groups: nil, name: "Соусы", products: souseArray, image: UIImage(named: "imgSouses0")!)
        
        let pizzaGroup = Group(groups: [pizzaGroupBig, pizzaGroupSmall, pizzaGroupThin], name: "Пиццы", products: nil, image: UIImage(named: "imgPizzaGroup")!)
        let snackGroup = Group(groups: [snackGroup0], name: "Закуски", products: nil, image: UIImage(named: "imgSnacks0")!)
        let sousesGroup = Group(groups: [souseGroup0], name: "Соусы", products: nil, image: UIImage(named: "imgSouses0")!)
        
        groups.append(pizzaGroup)
        groups.append(snackGroup)
        groups.append(sousesGroup)
    }
}

extension String {
    func widthOfString (usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        return ceil(size.width)
    }
}


























