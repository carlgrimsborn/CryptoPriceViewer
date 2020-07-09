//
//  CoinListViewModel.swift
//  CryptoPriceViewer
//
//  Created by Carl Grimsborn on 2020-07-09.
//  Copyright © 2020 Carl Grimsborn. All rights reserved.
//

import Foundation
import Combine

class CoinListViewModel: ObservableObject {
    
    private let cryptoService = CryptoService()
    
    @Published var coinViewModels = [CoinViewModel]()
    
    var cancellable: AnyCancellable?
    
    func fetchCoins() {
        cancellable = cryptoService.fetchCoins().sink(receiveCompletion: {_ in}, receiveValue: { cryptoContainer in
            self.coinViewModels = cryptoContainer.data.coins.map { CoinViewModel($0) }
               print(self.coinViewModels)
        })
     
    }
}
