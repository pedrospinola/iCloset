//
//  ViewController.swift
//  NoCloset
//
//  Created by Pedro Henrique Spínola de Assis on 31/08/20.
//  Copyright © 2020 Pedro Spínola. All rights reserved.
//

import UIKit

//ViewController onde estarão agrupados os looks salvos
class TelaSeusLooks: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewLooksCell", for: indexPath) as! CollectionViewLooksCell
        
        cell.looksImage.image = UIImage(imageLiteralResourceName: "Mask Group")
        cell.looksName.text = "Heterotop"
        
        return cell
    }
    
    
    @IBOutlet weak var TableViewLooks: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewLooksCell", for: indexPath) as! TableViewLooksCell

        cell.sessionOfLookTitle.text = "Looks de sair"
        cell.CollectionViewLook.delegate = self
        cell.CollectionViewLook.dataSource = self

        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    

//  sobreescrevendo a função touchesBegan para esconder o teclado quando o usuário tocar na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var climaView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        climaView.layer.cornerRadius = 30
        
        TableViewLooks.delegate = self
        TableViewLooks.dataSource = self
        
        
    }


}

//ViewController onde o usuário vai poder salvar um look novo
class TelaNovoLook: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewNovoLookCell", for: indexPath) as! CollectionViewNovoLookCell
            
        cell.imagemPeçaDoLook.image = UIImage(imageLiteralResourceName: "image 3")
        cell.imagemPeçaDoLook.layer.cornerRadius = 30
            
            return cell
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewNovoLookCell", for: indexPath) as! TableViewNovoLookCell
        
        cell.sessionNewLook.text = "Acessório"
        cell.collectionViewNovoLook.delegate = self
        cell.collectionViewNovoLook.dataSource = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 330
    }
    
    
    //  sobreescrevendo a função touchesBegan para esconder o teclado quando o usuário tocar na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var TableViewNovoLook: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        TableViewNovoLook.delegate = self
        TableViewNovoLook.dataSource = self
        
    }


}

//ViewController onde o usuário vai poder visualizar um look salvo
class TelaVerLook: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}