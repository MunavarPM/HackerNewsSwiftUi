//
//  DetailedView.swift
//  HackerNews
//
//  Created by MUNAVAR PM on 04/05/23.
//

import SwiftUI


struct DetailedView: View {
    let url: String?
    var body: some View {
        WebView(urlstring: url)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url:"https://www.google.com")
    }
}

//when the detailView load up the it was pass the url:string it use get creat an WWebView components of uikit. ones that get created pass to udateUIView  we updated the loading the url that meant be show in DetailedView
