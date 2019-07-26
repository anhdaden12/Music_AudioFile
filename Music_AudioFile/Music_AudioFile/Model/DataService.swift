//
//  DataService.swift
//  Music_AudioFile
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import Foundation

class DataService {
    
    static let shareIntance: DataService = DataService()
    
    func requestDataAPi(comPlateHandle: @escaping ([MusicAudio]) -> Void) {
        
        guard let url = URL(string: "https://raw.githubusercontent.com/kidanh/ringtones/master/ringtones.json") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        
        let downloadTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            do {
                let dataApi = try JSONDecoder().decode([MusicAudio].self, from: data!)
                DispatchQueue.main.async {
                    comPlateHandle(dataApi)
                }
            } catch {
                print(error)
            }
        }
        downloadTask.resume()
    }
}
