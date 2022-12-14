//
//  Pilot+CoinAPI.swift
//  Data
//
//  Created by Doan Thieu on 01/12/2022.
//

import NetworkCore
import Pilot

extension Pilot: CoinAPIProtocol where R == CoinRoute {

    public func myCoins() async throws -> [APICoin] {
        return try await request(
            .myCoins(MyCoinsParameters(perPage: 10, page: 1)),
            target: [APICoin].self,
            decoder: .apiDecoder
        )
    }

    public func trendingCoins() async throws -> [APICoin] {
        return try await request(.trendingCoins, target: [APICoin].self, decoder: .apiDecoder)
    }

    public func coinDetail() async throws -> APICoin {
        return try await request(.coinDetail, target: APICoin.self, decoder: .apiDecoder)
    }
}
