//
//  HomeTableViewController.swift
//  Music_AudioFile
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    var totalMusic: [MusicAudio]?
    var anotherContainerMusic = [String]()
    var containerMusic2 = [MusicAudio]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setdataFromApi()
    }

    override func viewWillAppear(_ animated: Bool) {
        containerMusic2.removeAll()
    }
    
    func setdataFromApi(){
        DataService.shareIntance.requestDataAPi { data in
           self.totalMusic = data
            for i in 0..<self.totalMusic!.count {
                if self.anotherContainerMusic.contains(self.totalMusic![i].genre) == false {
                    self.anotherContainerMusic.append(self.totalMusic![i].genre)
                }
            }
            self.tableView.reloadData()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if MusicAudio.self == nil {
            return 0
        } else {
            return anotherContainerMusic.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = anotherContainerMusic[indexPath.row]
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let detailVC = segue.destination as? DetailTableViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            for i in 0..<self.totalMusic!.count {
                if totalMusic![i].genre == anotherContainerMusic[indexPath.row] {
                    containerMusic2.append(totalMusic![i])
                }
            }
            detailVC?.receiveDataMusic = containerMusic2
        }
    }
    
    
}
