//
//  CryptoData.swift
//  CryptoPriceViewer
//
//  Created by Carl Grimsborn on 2020-07-09.
//  Copyright © 2020 Carl Grimsborn. All rights reserved.
//

import Foundation

struct CryptoData: Decodable {
    let coins: [Coin]
}
