//
//  HomeViewController.swift
//  CollectionView
//
//  Created by mac on 28/01/2022.
//

import UIKit

class HomeViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    var arr   = [UIImage(named: "apple")! , UIImage(named: "mango")! , UIImage(named: "straberry")! , UIImage(named: "orange")!]
    var timer : Timer?
    var current = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        moveToNext()
        pageControl.numberOfPages = arr.count
    }
   
    func moveToNext(){
        timer = Timer.scheduledTimer(timeInterval: 2.5 , target: self, selector: #selector(getNext), userInfo: nil, repeats: true)
        
    }
    @objc
    func getNext(){
        if(current < arr.count-1){
            current += 1
        }else {
            current = 0
        }
        collectionView.scrollToItem(at: IndexPath(item: current, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = current
        
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "home", for: indexPath) as! HomeCollectionViewCell
        cell.photo.image = arr[indexPath.row ]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
   
    
    

   
}
