import UIKit

class PlacesViewController: UIViewController  , UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionV: UICollectionView!
    var arr = [content]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionV.delegate = self
        collectionV.dataSource = self
        arr.append(content(name: "2019", photo: [UIImage(named: "Image1")!,UIImage(named: "Image2")!,UIImage(named: "Image3")!]))
        arr.append(content(name: "2020", photo: [UIImage(named: "Image4")!,UIImage(named: "Image5")!]))
        arr.reverse()


    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        arr.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arr[section].photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PlacesCollectionViewCell
        cell.img.image = arr[indexPath.section].photo[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.313 , height:collectionView.frame.width * 0.313)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if(kind == UICollectionView.elementKindSectionHeader){
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photoheader", for: indexPath) as! HeaderCollectionReusableView
        header.lbl.text = arr[indexPath.section].name
        header.backgroundColor = UIColor.lightGray
            return header
    }else{
        let footer = collectionV.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photoFooter", for: indexPath)
        footer.backgroundColor = UIColor.gray
        return footer
    }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 35)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionV.frame.width, height: 35)
    }
    
    
    
    
    struct content {
        var name : String
        var photo = [UIImage]()
        
    }
    

   


}
