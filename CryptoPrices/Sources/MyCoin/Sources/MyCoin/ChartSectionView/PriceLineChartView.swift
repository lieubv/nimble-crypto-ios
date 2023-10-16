//
//  PriceLineChartView.swift
//  MyCoin
//
//  Created by Minh Pham on 04/01/2023.
//
// swiftlint:disable file_types_order

import Charts
import Styleguide
import SwiftUI

struct PriceLineChartView: UIViewRepresentable {

    let entries: [ChartDataEntry]

    func makeUIView(context: Context) -> LineChartView {
        let lineChart = LineChartView()

        // Setup default configurations and delegation
        lineChart.rightAxis.enabled = false
        lineChart.leftAxis.enabled = false
        lineChart.xAxis.enabled = false
        lineChart.legend.enabled = false
        lineChart.minOffset = 0.0
        lineChart.isUserInteractionEnabled = false
        lineChart.delegate = context.coordinator

        // Setup NoData text
        formatNoDataText(uiView: lineChart)

        return lineChart
    }

    func updateUIView(_ uiView: LineChartView, context: Context) {
        if entries.isEmpty {
            uiView.data = nil
        } else {
            let dataSet = LineChartDataSet(entries: entries)
            formatDataSet(dataSet: dataSet)
            uiView.data = LineChartData(dataSet: dataSet)
        }
        uiView.notifyDataSetChanged()
    }

    func makeCoordinator() -> ChartViewCoordinator {
        return ChartViewCoordinator(parent: self)
    }

    private func formatDataSet(dataSet: LineChartDataSet) {
        // Setup line drawing
        dataSet.colors = [Colors.caribbeanGreen.color]
        dataSet.lineWidth = 2.0

        // Handle each data point drawing
        dataSet.drawIconsEnabled = false
        dataSet.drawValuesEnabled = false
        dataSet.drawCirclesEnabled = false

        // Draw gradient fill colors
        let gradientColors = [
            Colors.caribbeanGreen.color.withAlphaComponent(0.3).cgColor,
            Color.clear.cgColor
        ]
        dataSet.fillAlpha = 1.0
        if let gradient = CGGradient(colorsSpace: nil, colors: gradientColors as CFArray, locations: nil) {
            dataSet.fill = LinearGradientFill(gradient: gradient, angle: -90.0)
        }
        dataSet.drawFilledEnabled = true
    }

    private func formatNoDataText(uiView: LineChartView) {
        uiView.noDataText = Strings.MyCoin.PriceLineChart.noDataText
        uiView.noDataFont = Fonts.Inter.medium.font(size: 14.0)
        uiView.noDataTextColor = Colors.textMedium.color
        uiView.noDataTextAlignment = .center
    }
}

class ChartViewCoordinator: NSObject, ChartViewDelegate {

    let parent: PriceLineChartView

    init(parent: PriceLineChartView) {
        self.parent = parent
    }

    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        // TODO: Handle chart data point interactions if needed
        print("Selected price - timestamp \(Int(entry.x)) and price \(Int(entry.y))")
    }
}

#if DEBUG
struct PriceLineChartView_Previews: PreviewProvider {
    
    static var previews: some View {
        PriceLineChartView(entries: [])
    }
}
#endif
// swiftlint:enable file_types_order
