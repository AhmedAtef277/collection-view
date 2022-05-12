//
//  ViewController4.swift
//  CollectionView
//
//  Created by mac on 01/02/2022.
//

import UIKit

class ViewController4: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var arr = [contentOfCell]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
      
        arr.append(contentOfCell(title: "Top", photos: [UIImage(named: "Image1")!,UIImage(named: "Image2")!,UIImage(named: "Image3")!,UIImage(named: "Image4")!,UIImage(named: "Image5")!]))
        
        
        arr.append(contentOfCell(title: "Not Top", photos: [UIImage(named: "apple")!,UIImage(named: "orange")!,UIImage(named: "mango")!,]))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvCell", for: indexPath) as! TableViewCell4
        cell.setUpData(lbl: arr[indexPath.row].title, photo: arr[indexPath.row].photos)
       // cell.lbl.backgroundColor = UIColor.lightGray
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    
    struct contentOfCell{
        let title : String
        let photos : [UIImage]
    }
    

   
    

   

}
