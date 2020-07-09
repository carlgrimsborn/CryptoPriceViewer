//
//  ContentView.swift
//  CryptoPriceViewer
//
//  Created by Carl Grimsborn on 2020-07-09.
//  Copyright © 2020 Carl Grimsborn. All rights reserved.
//

import SwiftUI



struct CoinList: View {
    @ObservedObject private var viewModel = CoinListViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.coinViewModels, id: \.self) { coinViewModel in
                Text(coinViewModel.displayText)
                
            }.onAppear() {
                self.viewModel.fetchCoins()
            }.navigationBarTitle("Coins")
        }
    }
}

struct CoinList_Previews: PreviewProvider {
    static var previews: some View {
        CoinList()
    }
}
