//
//  Example.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 26/7/2023.
//

import SwiftUI
import ParseSwift

struct ExampleView: View {
    @ObservedObject var viewModel = ExampleViewModel()

    var body: some View {
        List(viewModel.examples, id: \.objectId) { example in
            Text(example.name ?? "Error")
        }
        .onAppear {
            viewModel.loadExamples()
        }
    }
}


struct Example: ParseObject {
    var originalData: Data?
    
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Custom keys
    var name: String?

    static var className: String {
        return "Example"
    }
}

class ExampleViewModel: ObservableObject {
    @Published var examples = [Example]()

    func loadExamples() {
        let query = Example.query()

        query.find { result in
            switch result {
            case .success(let examples):
                DispatchQueue.main.async {
                    self.examples = examples
                    print("fetching examples: \(examples.count)")
                }
            case .failure(let error):
                print("Error fetching examples: \(error)")
            }
        }
    }
}

