//
//  FullProductViewController.swift
//  PizzaHub
//
//  Created by User on 8/30/22.
//

import UIKit

class FullProductViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var products = [Product]()
    var indexPath = IndexPath(item: 0, section: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "FullProductCell", bundle: nil), forCellWithReuseIdentifier: "FullProductCell")
        self.collectionView.performBatchUpdates(nil) {(Bool) in
            self.collectionView.scrollToItem(at: self.indexPath, at: .centeredHorizontally, animated: false)
        }

    }
    

}


extension FullProductViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FullProductCell", for: indexPath) as! FullProductCell
        cell.setupCell(product: self.products[indexPath.item])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width, height: self.collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.collectionView.frame.width, height: self.collectionView.frame.height)
    }
    
}




























