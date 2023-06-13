//
//  BookingViewModel.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import Foundation

class BookingViewModel : ObservableObject {
    @Published var checkInDate = Date.now
    @Published var checkOutDate = Date()
}
