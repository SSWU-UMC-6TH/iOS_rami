//
//  ViewController.swift
//  daangnmarket
//
//  Created by 김민주 on 4/30/24.
//

import UIKit

// 데이터 불러오기
let testList = product.data

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
        
    @IBOutlet weak var collectionView: UICollectionView!
        
    // viewDidLoad 함수 정의
       override func viewDidLoad() {
           super.viewDidLoad()
           
           collectionView.delegate = self
           collectionView.dataSource = self
           
//           let cellName = "ProductCollectionViewCell"
//           let cellReuseIdentifier = "ProductCell"
           
           collectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCollectionViewCell
           
           // 데이터 설정
           let product = product.data[indexPath.item]
           cell.title.text = product.title
           cell.title2.text = product.title2 // <- 수정: title2로 변경
           cell.image.image = UIImage(named: product.image)
           
           return cell
       }
       
       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return product.data.count
       }
    
    // MARK: - UICollectionViewDelegateFlowLayout
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 130)
    }
}
