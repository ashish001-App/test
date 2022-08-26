//
//  ViewController.swift
//  CollectionViewCompositionalLayout
//
//  Created by Admin on 25/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let images: [UIImage] = Array(1 ... 11).map{ UIImage(named: String($0))! }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.collectionViewLayout = createLayoutInstagram()
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        // Item  (cell)
        let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 1)
        
        // Group (collection of items)
        let group = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .fractionalHeight(0.3), item: item, count: 3)
        
        // Section (collection of group)
        let section = NSCollectionLayoutSection(group: group)
        
        //return
        return UICollectionViewCompositionalLayout(section: section)
        
    }
    
    private func createLayout_2() -> UICollectionViewCompositionalLayout {
        
        
        
        let horizontalItem = CompositionalLayout.createItem(width: .fractionalWidth(0.5), height: .fractionalHeight(1), spacing: 1)
        let verticalItem = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 1)
        
        let verticalGroup = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(0.5), height: .fractionalHeight(1), item: verticalItem, count: 2)
        
        let horizontalGroup = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .fractionalHeight(0.6), items: [horizontalItem,verticalGroup])
        
        
        let mainItem = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(0.4), spacing: 1)
        
        let mainGroup = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(1), height: .fractionalHeight(0.5), items: [mainItem,horizontalGroup])
        
       
        let section = NSCollectionLayoutSection(group: mainGroup)
        
        //return
        return UICollectionViewCompositionalLayout(section: section)
        
    }
    
    private func createLayoutInstagram() -> UICollectionViewCompositionalLayout {
        
        let item = CompositionalLayout.createItem(width: .fractionalWidth(1), height: .fractionalHeight(1), spacing: 1)
        let group1 = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .fractionalHeight(1), item: item,count: 2)
        let squareGroup = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(0.67), height: .fractionalHeight(1), item: group1,count: 2)
        
        let bigItem = CompositionalLayout.createItem(width: .fractionalWidth(0.33), height: .fractionalHeight(1), spacing: 1)

        let halfGroup = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .fractionalHeight(0.5), items: [squareGroup,bigItem])
        
        let secondHalfGroup = CompositionalLayout.createGroup(alignment: .horizontal, width: .fractionalWidth(1), height: .fractionalHeight(0.5), items: [bigItem,squareGroup])
       
        let group = CompositionalLayout.createGroup(alignment: .vertical, width: .fractionalWidth(1), height: .fractionalHeight(0.8), items: [halfGroup,secondHalfGroup])
        
        let section = NSCollectionLayoutSection(group: group)
        
        //return
        return UICollectionViewCompositionalLayout(section: section)
        
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.setup(image: images[indexPath.row])
        return cell
    }
    
}



class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    
    func setup(image: UIImage) {
        cellImageView.image = image
    }
    
}
