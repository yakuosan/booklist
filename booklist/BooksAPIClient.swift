//
//  BooksAPIClient.swift
//  booklist
//
//  Created by 阪上八雲 on 2026/02/05.
//

import SwiftUI

class BooksAPIClient:ObservableObject{
    @Published var books:BookResponse?
    private let apiClient = APIClient()
    
    func fetchBooks(queryString:String){
        Task{@MainActor in
            self.books = await apiClient.fetchData(
                from:"https://www.googleapis.com/books/v1/volumes?q=\(queryString)",
                responseType: BookResponse.self
            )
        }
    }
}
