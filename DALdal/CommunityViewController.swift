//
//  CommunityViewController.swift
//  DALdal
//
//  Created by 임은지 on 2020/10/05.
//

import UIKit

class CommunityViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var searchBar: UITextField! {
        didSet { searchBar.delegate = self }
    }
    
    @IBOutlet weak var communityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.delegate = self
        
        communityTableView.dataSource = self
        communityTableView.delegate = self
        
        //cell size 조정
        communityTableView.rowHeight = UITableView.automaticDimension
        communityTableView.estimatedRowHeight = 600

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
    
    var postCount = 10 //나중에는 모델에서 받아와야함.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommunityCell", for: indexPath)
        
        //let post = postsArray[indexPath.row]
        
        return cell
    }
}
