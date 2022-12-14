//
//  MenuViewController.swift
//  PizzaHub
//
//  Created by User on 8/23/22.
//

import UIKit

class MenuViewController: UIViewController {


    @IBOutlet weak var groupsCollectionView: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var group: Group!
    var selectedGroup: Group? {
        didSet {
            if let groupSelect = self.selectedGroup {
                self.title = groupSelect.name
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.groupsCollectionView.register(UINib(nibName: "GroupCell", bundle: nil), forCellWithReuseIdentifier: "GroupCell")
        self.groupsCollectionView.dataSource = self
        self.groupsCollectionView.delegate = self
        
        if let groups = group.groups, groups.count > 0 {
            selectedGroup = groups.first!
        } else {
            selectedGroup = group
        }
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if scrollView == collectionView {
            let cells = collectionView.visibleCells
            if let cell = cells.first, let indexPath = self.collectionView.indexPath(for: cell) {
                self.selectedGroup = self.group.groups![indexPath.item]
                self.groupsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
                self.groupsCollectionView.reloadData()
            }
        }
    }
}

extension MenuViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let groups = group.groups {
            return groups.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == groupsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as? GroupCell
            let group = self.group.groups![indexPath.item]
            let isSelected = group.name == selectedGroup!.name
            cell?.setupCell(group: group, isSelected: isSelected)
            return cell!
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
            let products = self.group.groups![indexPath.item].products!
            cell.fullScreenHandler = fullScreenHandler
            cell.setupCell(products: products)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == groupsCollectionView {
            let groupName = self.group.groups![indexPath.item].name
            let width = groupName.widthOfString(usingFont: UIFont.systemFont(ofSize: 17))
            return CGSize(width: width + 20, height: collectionView.frame.height)
            
        } else {
            return CGSize(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.height - 300)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == groupsCollectionView {
            self.selectedGroup = self.group.groups![indexPath.item]
            self.groupsCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.groupsCollectionView.reloadData()
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}

extension MenuViewController {
    func fullScreenHandler(cell: ProductCell, indexProduct: Int) {
        if let indexPath = self.collectionView.indexPath(for: cell) {
            let products = self.group.groups![indexPath.item].products!
            let vc = storyboard?.instantiateViewController(identifier: "FullProductViewController") as! FullProductViewController
            vc.products = products
            vc.indexPath = IndexPath(row: indexProduct, section: 0)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}






















