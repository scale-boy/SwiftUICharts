//
//  ContentView.swift
//  SwiftUI-DrawCharts
//
//  Created by Thuận Nguyễn Văn on 31/07/2021.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    //  Legend
                    
                    let iphone8 = Legend(color: .red,
                                          label: "Iphone 8")
                    let iphone10 = Legend(color: .green,
                                          label: "Iphone 10")
                    let iphone11 = Legend(color: .blue,
                                          label: "Iphone 11")
                    let iphone12 = Legend(color: .yellow,
                                          label: "Iphone 12")
                    let iphone5 = Legend(color: .purple,
                                          label: "Iphone 5")
                    let iphone6 = Legend(color: .orange,
                                          label: "Iphone 6")
                    
                    // DataPoint
                    
                    let points: [DataPoint] = [
                        DataPoint.init(value: 2, label: "2", legend: iphone6),
                        DataPoint.init(value: 8, label: "2", legend: iphone5),
                        DataPoint.init(value: 4, label: "2", legend: iphone10),
                        DataPoint.init(value: 7, label: "2", legend: iphone11),
                        DataPoint.init(value: 11, label: "2", legend: iphone12),
                        DataPoint.init(value: 5, label: "2", legend: iphone8),
                        DataPoint.init(value: 2, label: "2", legend: iphone5),
                        DataPoint.init(value: 12, label: "2", legend: iphone11)
                    ]
                    
                    
                    
                    // Line Chart
                    Section.init(header: Text("Line Chart")) {
                        LineChartView.init(dataPoints: points)
                            .frame(height: UIScreen.main.bounds.height / 3)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(30)
                            .padding()
                    }
                    
                    // Bar Chart
                    Section.init(header: Text("Bar Chart")) {
                        BarChartView.init(dataPoints: points)
                            .frame(height: UIScreen.main.bounds.height / 3)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(30)
                            .padding()
                    }
                    
                    Section.init(header: Text("Horizontal Bar Chart")) {
                        HorizontalBarChartView.init(dataPoints: points)
                            .frame(height: UIScreen.main.bounds.height / 3)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(30)
                            .padding()
                            
                    }

                }
            }
            .navigationTitle("Charts & Graphs")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
