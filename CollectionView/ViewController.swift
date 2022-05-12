//
//  ViewController.swift
//  CollectionView
//
//  Created by mac on 28/01/2022.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
  @IBOutlet weak var collectionView: UICollectionView!
    
    var arr = [attributes]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        arr.append(attributes(photo: UIImage(named: "apple")!, price: 20))
        arr.append(attributes(photo: UIImage(named: "orange")!, price: 10))
        arr.append(attributes(photo: UIImage(named: "straberry")!, price: 15))
        arr.append(attributes(photo: UIImage(named: "mango")!, price: 25))
        arr.append(attributes(photo: UIImage(named: "apple")!, price: 20))
        arr.append(attributes(photo: UIImage(named: "orange")!, price: 10))
        arr.append(attributes(photo: UIImage(named: "straberry")!, price: 15))
        arr.append(attributes(photo: UIImage(named: "mango")!, price: 25))
        arr.append(attributes(photo: UIImage(named: "apple")!, price: 20))
        arr.append(attributes(photo: UIImage(named: "orange")!, price: 10))
        arr.append(attributes(photo: UIImage(named: "straberry")!, price: 15))
        arr.append(attributes(photo: UIImage(named: "mango")!, price: 25))

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "veg", for: indexPath) as! VegetablesCollectionViewCell
        let data = arr[indexPath.row]
        cell.setUpCell(ph: data.photo, pr: data.price)
        cell.backgroundColor = UIColor.yellow
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 3.1, height: self.view.frame.width / 3)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    struct attributes{
        var photo : UIImage
        var price : Double
        
    }
    


}

