//
//  HomeTests.swift
//  CryptoPricesKIFUITests
//
//  Created by Bliss on 16/1/23.
//

import OHHTTPStubs
import OHHTTPStubsSwift
import XCTest

final class HomeTests: XCTestCase {

    override func setUpWithError() throws {
        stub(condition: isHost("api.coingecko.com")) { _ in
            let coinData = Data("""
[
{
"id": "bitcoin",
"symbol": "btc",
"name": "Baaaaaaaitcoin",
"image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
"current_price": 17219.09,
"market_cap": 331125891372,
"market_cap_rank": 1,
"fully_diluted_valuation": 361629456578,
"total_volume": 22998840648,
"high_24h": 17309.57,
"low_24h": 16806.84,
"price_change_24h": 409.54,
"price_change_percentage_24h": 2.43636,
"market_cap_change_24h": 7739414992,
"market_cap_change_percentage_24h": 2.39324,
"circulating_supply": 19228643,
"total_supply": 21000000,
"max_supply": 21000000,
"ath": 69045,
"ath_change_percentage": -75.07518,
"ath_date": "2021-11-10T14:24:11.849Z",
"atl": 67.81,
"atl_change_percentage": 25279.06141,
"atl_date": "2013-07-06T00:00:00.000Z",
"roi": null,
"last_updated": "2022-12-09T06:59:03.370Z",
"price_change_percentage_24h_in_currency": 2.436355323919487
},
{
"id": "ethereum",
"symbol": "eth",
"name": "Ethereum",
"image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880",
"current_price": 1279.62,
"market_cap": 154160568640,
"market_cap_rank": 2,
"fully_diluted_valuation": 154160568640,
"total_volume": 6341944995,
"high_24h": 1289.24,
"low_24h": 1229.13,
"price_change_24h": 50.49,
"price_change_percentage_24h": 4.10816,
"market_cap_change_24h": 5941698447,
"market_cap_change_percentage_24h": 4.00873,
"circulating_supply": 120523262.392712,
"total_supply": 120523262.392712,
"max_supply": null,
"ath": 4878.26,
"ath_change_percentage": -73.77407,
"ath_date": "2021-11-10T14:24:19.604Z",
"atl": 0.432979,
"atl_change_percentage": 295380.75276,
"atl_date": "2015-10-20T00:00:00.000Z",
"roi": {
  "times": 98.38545531051348,
  "currency": "btc",
  "percentage": 9838.545531051348
},
"last_updated": "2022-12-09T06:58:55.625Z",
"price_change_percentage_24h_in_currency": 4.108157802585832
},
{
"id": "tether",
"symbol": "usdt",
"name": "Tether",
"image": "https://assets.coingecko.com/coins/images/325/large/Tether.png?1668148663",
"current_price": 1,
"market_cap": 65738323368,
"market_cap_rank": 3,
"fully_diluted_valuation": 65738323368,
"total_volume": 28082489022,
"high_24h": 1.003,
"low_24h": 0.994763,
"price_change_24h": -0.000257936450225982,
"price_change_percentage_24h": -0.02578,
"market_cap_change_24h": 61784707,
"market_cap_change_percentage_24h": 0.09407,
"circulating_supply": 65707694611.0968,
"total_supply": 65707694611.0968,
"max_supply": null,
"ath": 1.32,
"ath_change_percentage": -24.4072,
"ath_date": "2018-07-24T00:00:00.000Z",
"atl": 0.572521,
"atl_change_percentage": 74.69486,
"atl_date": "2015-03-02T00:00:00.000Z",
"roi": null,
"last_updated": "2022-12-09T06:55:06.710Z",
"price_change_percentage_24h_in_currency": -0.025776426334399114
},
{
"id": "binancecoin",
"symbol": "bnb",
"name": "BNB",
"image": "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1644979850",
"current_price": 290.04,
"market_cap": 47372813438,
"market_cap_rank": 4,
"fully_diluted_valuation": 58027549255,
"total_volume": 705823264,
"high_24h": 292.07,
"low_24h": 283.85,
"price_change_24h": 6.19,
"price_change_percentage_24h": 2.18157,
"market_cap_change_24h": 1025940042,
"market_cap_change_percentage_24h": 2.21361,
"circulating_supply": 163276974.63,
"total_supply": 163276974.63,
"max_supply": 200000000,
"ath": 686.31,
"ath_change_percentage": -57.73395,
"ath_date": "2021-05-10T07:24:17.097Z",
"atl": 0.0398177,
"atl_change_percentage": 728406.97469,
"atl_date": "2017-10-19T00:00:00.000Z",
"roi": null,
"last_updated": "2022-12-09T06:59:04.200Z",
"price_change_percentage_24h_in_currency": 2.181573891593882
},
{
"id": "usd-coin",
"symbol": "usdc",
"name": "USD Coin",
"image": "https://assets.coingecko.com/coins/images/6319/large/USD_Coin_icon.png?1547042389",
"current_price": 1.001,
"market_cap": 42812617511,
"market_cap_rank": 5,
"fully_diluted_valuation": 42812601681,
"total_volume": 1953231808,
"high_24h": 1.004,
"low_24h": 0.994072,
"price_change_24h": -0.000597727269250337,
"price_change_percentage_24h": -0.0597,
"market_cap_change_24h": -100382983.19042206,
"market_cap_change_percentage_24h": -0.23392,
"circulating_supply": 42784517507.6659,
"total_supply": 42784501687.8959,
"max_supply": null,
"ath": 1.17,
"ath_change_percentage": -14.65041,
"ath_date": "2019-05-08T00:40:28.300Z",
"atl": 0.891848,
"atl_change_percentage": 12.22763,
"atl_date": "2021-05-19T13:14:05.611Z",
"roi": null,
"last_updated": "2022-12-09T06:59:14.042Z",
"price_change_percentage_24h_in_currency": -0.05969805065879159
},
{
"id": "binance-usd",
"symbol": "busd",
"name": "Binance USD",
"image": "https://assets.coingecko.com/coins/images/9576/large/BUSD.png?1568947766",
"current_price": 1,
"market_cap": 22069850586,
"market_cap_rank": 6,
"fully_diluted_valuation": 22069850586,
"total_volume": 6456694687,
"high_24h": 1.004,
"low_24h": 0.99789,
"price_change_24h": 0.00038321,
"price_change_percentage_24h": 0.03832,
"market_cap_change_24h": -53072877.649456024,
"market_cap_change_percentage_24h": -0.2399,
"circulating_supply": 22058109550.87,
"total_supply": 22058109550.87,
"max_supply": null,
"ath": 1.15,
"ath_change_percentage": -13.29144,
"ath_date": "2020-03-13T02:35:42.953Z",
"atl": 0.901127,
"atl_change_percentage": 11.0602,
"atl_date": "2021-05-19T13:04:37.445Z",
"roi": null,
"last_updated": "2022-12-09T06:59:05.622Z",
"price_change_percentage_24h_in_currency": 0.03831939376780287
},
{
"id": "ripple",
"symbol": "xrp",
"name": "XRP",
"image": "https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1605778731",
"current_price": 0.393101,
"market_cap": 19776175873,
"market_cap_rank": 7,
"fully_diluted_valuation": 39347394122,
"total_volume": 850969273,
"high_24h": 0.395682,
"low_24h": 0.385459,
"price_change_24h": 0.00388259,
"price_change_percentage_24h": 0.99754,
"market_cap_change_24h": 206658455,
"market_cap_change_percentage_24h": 1.05602,
"circulating_supply": 50260446248,
"total_supply": 99989199669,
"max_supply": 100000000000,
"ath": 3.4,
"ath_change_percentage": -88.44796,
"ath_date": "2018-01-07T00:00:00.000Z",
"atl": 0.00268621,
"atl_change_percentage": 14515.04255,
"atl_date": "2014-05-22T00:00:00.000Z",
"roi": null,
"last_updated": "2022-12-09T06:59:04.593Z",
"price_change_percentage_24h_in_currency": 0.997535080057804
},
{
"id": "dogecoin",
"symbol": "doge",
"name": "Dogecoin",
"image": "https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1547792256",
"current_price": 0.098291,
"market_cap": 13491241074,
"market_cap_rank": 8,
"fully_diluted_valuation": null,
"total_volume": 610239050,
"high_24h": 0.099278,
"low_24h": 0.095545,
"price_change_24h": 0.00175804,
"price_change_percentage_24h": 1.82119,
"market_cap_change_24h": 246744683,
"market_cap_change_percentage_24h": 1.863,
"circulating_supply": 137230236383.705,
"total_supply": null,
"max_supply": null,
"ath": 0.731578,
"ath_change_percentage": -86.55902,
"ath_date": "2021-05-08T05:08:23.458Z",
"atl": 0.0000869,
"atl_change_percentage": 113049.60549,
"atl_date": "2015-05-06T00:00:00.000Z",
"roi": null,
"last_updated": "2022-12-09T06:59:16.668Z",
"price_change_percentage_24h_in_currency": 1.8211902635805541
},
{
"id": "cardano",
"symbol": "ada",
"name": "Cardano",
"image": "https://assets.coingecko.com/coins/images/975/large/cardano.png?1547034860",
"current_price": 0.314726,
"market_cap": 11027178526,
"market_cap_rank": 9,
"fully_diluted_valuation": 14159587351,
"total_volume": 152688313,
"high_24h": 0.316614,
"low_24h": 0.309969,
"price_change_24h": 0.00395107,
"price_change_percentage_24h": 1.27136,
"market_cap_change_24h": 135533746,
"market_cap_change_percentage_24h": 1.24438,
"circulating_supply": 35045020830.3234,
"total_supply": 45000000000,
"max_supply": 45000000000,
"ath": 3.09,
"ath_change_percentage": -89.8105,
"ath_date": "2021-09-02T06:00:10.474Z",
"atl": 0.01925275,
"atl_change_percentage": 1533.74515,
"atl_date": "2020-03-13T02:22:55.044Z",
"roi": null,
"last_updated": "2022-12-09T06:59:12.673Z",
"price_change_percentage_24h_in_currency": 1.2713634886467877
},
{
"id": "matic-network",
"symbol": "matic",
"name": "Polygon",
"image": "https://assets.coingecko.com/coins/images/4713/large/matic-token-icon.png?1624446912",
"current_price": 0.922778,
"market_cap": 8183058381,
"market_cap_rank": 10,
"fully_diluted_valuation": 9226854935,
"total_volume": 311601789,
"high_24h": 0.929999,
"low_24h": 0.890338,
"price_change_24h": 0.03243971,
"price_change_percentage_24h": 3.64353,
"market_cap_change_24h": 279570956,
"market_cap_change_percentage_24h": 3.53731,
"circulating_supply": 8868740690.28493,
"total_supply": 10000000000,
"max_supply": 10000000000,
"ath": 2.92,
"ath_change_percentage": -68.35888,
"ath_date": "2021-12-27T02:08:34.307Z",
"atl": 0.00314376,
"atl_change_percentage": 29251.42156,
"atl_date": "2019-05-10T00:00:00.000Z",
"roi": {
  "times": 349.86597164831386,
  "currency": "usd",
  "percentage": 34986.597164831386
},
"last_updated": "2022-12-09T06:59:03.155Z",
"price_change_percentage_24h_in_currency": 3.6435280328067745
}
]
""".utf8)
            return .init(data: coinData, statusCode: 200, headers: ["Content-Type": "application/json"])
        }    }

    override func tearDownWithError() throws {
        HTTPStubs.removeAllStubs()
    }

    func testExample() throws {
        self.tester().waitForView(
            withAccessibilityLabel: "BTC"// Strings.Home.Title.text
        )
    }
}
