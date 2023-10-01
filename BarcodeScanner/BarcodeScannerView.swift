//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Jordan Haynes on 9/29/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedcode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height:60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not yet scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .mint)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
