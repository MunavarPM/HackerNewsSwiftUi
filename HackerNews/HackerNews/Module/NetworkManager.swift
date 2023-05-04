//
//  NetworkManager.swift
//  HackerNews
//
//  Created by MUNAVAR PM on 03/05/23.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var post = [Post]()
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            //take the default url into the section form
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                // show that if there is no error that means there have an value then that value convert into the JSONDecoder() form.
                if error == nil {
                    let decoder = JSONDecoder()
                    // we was created the postData for struture and than we can decode it
                    if let safeData = data {
                        do {
                            //decoder was trow method that why we use the try for error catch
                            // takr the decoded result to results
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                //hits was an array of post object
                                self.post = results.hits
                            }
                            
                        } catch {
                            print(error)
                        }
                                
                    }
                }
            }
            task.resume()
        }
    }
}
