//
//  BookingDateView.swift
//  HotelBooking
//
//  Created by JunHyuk Lim on 13/6/2023.
//

import SwiftUI
import HorizonCalendar

struct BookingDateView: View {
    //MARK: - PROPERTIES
    
    @EnvironmentObject var bookingViewModel : BookingViewModel
    
    private let calendar: Calendar
    private let monthsLayout: MonthsLayout
    private let visibleDateRange: ClosedRange<Date>
    private let currentDate = Date()
    
    private let monthDateFormatter: DateFormatter
    
    @StateObject private var calendarViewProxy = CalendarViewProxy()
    
    @State private var selectedDayRange: DayRange?
    @State private var selectedDayRangeAtStartOfDrag: DayRange?
    
    private var selectedDateRanges: Set<ClosedRange<Date>> {
        guard let selectedDayRange else { return [] }
        let selectedStartDate = calendar.date(from: selectedDayRange.lowerBound.components)!
        let selectedEndDate = calendar.date(from: selectedDayRange.upperBound.components)!
        return [selectedStartDate...selectedEndDate]
    }
    
    //MARK: - INIT
    init(calendar: Calendar, monthsLayout: MonthsLayout) {
        self.calendar = calendar
        self.monthsLayout = monthsLayout
        
        let startDate = calendar.date(from: DateComponents(year: 2023, month: 01, day: 01))!
        let endDate = calendar.date(from: DateComponents(year: 2026, month: 12, day: 31))!
        visibleDateRange = startDate...endDate
        
        monthDateFormatter = DateFormatter()
        monthDateFormatter.calendar = calendar
        monthDateFormatter.locale = calendar.locale
        monthDateFormatter.dateFormat = DateFormatter.dateFormat(
            fromTemplate: "MMMM yyyy",
            options: 0,
            locale: calendar.locale ?? Locale.current)
    }
    
    //MARK: - BODY
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.left")
                Spacer()
            }
            
            HStack{
                Text("Select Checkout date")

                Spacer()
            }
            .padding(.bottom, 32)
            
            
            CalendarViewRepresentable(
                calendar: calendar,
                visibleDateRange: visibleDateRange,
                monthsLayout: monthsLayout,
                dataDependency: selectedDayRange,
                proxy: calendarViewProxy)
            .verticalDayMargin(8)
            .horizontalDayMargin(8)
            .interMonthSpacing(16)
            
            .monthHeaderItemProvider { month in
                let monthHeaderText = monthDateFormatter.string(from: calendar.date(from: month.components)!)
                if case .vertical = monthsLayout {
                    return HStack {
                        Text(monthHeaderText)
                            .font(.title2)
                        Spacer()
                    }
                    .padding()
                    .calendarItemModel
                } else {
                    return Text(monthHeaderText)
                        .font(.title2)
                        .padding()
                        .calendarItemModel
                }
            }
            
            .dayItemProvider { day in
                let isSelected: Bool
                if let selectedDayRange {
                    isSelected = day == selectedDayRange.lowerBound || day == selectedDayRange.upperBound
                } else {
                    isSelected = false
                }
                return SwiftUIDayView(dayNumber: day.day, isSelected: isSelected)
                    .calendarItemModel
            }
            
            .dayRangeItemProvider(for: selectedDateRanges) { dayRangeLayoutContext in
                let framesOfDaysToHighlight = dayRangeLayoutContext.daysAndFrames.map { $0.frame }
                // UIKit view
                return DayRangeIndicatorView.calendarItemModel(
                    invariantViewProperties: .init(),
                    content: .init(framesOfDaysToHighlight: framesOfDaysToHighlight))
            }
            
            .onDaySelection { day in
                DayRangeSelectionHelper.updateDayRange(
                    afterTapSelectionOf: day,
                    existingDayRange: &selectedDayRange)
            }
            
            .onMultipleDaySelectionDrag(
                began: { day in
                    DayRangeSelectionHelper.updateDayRange(
                        afterDragSelectionOf: day,
                        existingDayRange: &selectedDayRange,
                        initialDayRange: &selectedDayRangeAtStartOfDrag,
                        state: .began,
                        calendar: calendar)
                },
                changed: { day in
                    DayRangeSelectionHelper.updateDayRange(
                        afterDragSelectionOf: day,
                        existingDayRange: &selectedDayRange,
                        initialDayRange: &selectedDayRangeAtStartOfDrag,
                        state: .changed,
                        calendar: calendar)
                },
                ended: { day in
                    DayRangeSelectionHelper.updateDayRange(
                        afterDragSelectionOf: day,
                        existingDayRange: &selectedDayRange,
                        initialDayRange: &selectedDayRangeAtStartOfDrag,
                        state: .ended,
                        calendar: calendar)
                })
            
            .onAppear {
                calendarViewProxy.scrollToDay(
                    containing: currentDate,
                    scrollPosition: .centered,
                    animated: false)
            }
            
            NavigationLink {
                BookingRoomView()
            } label: {
                Text("NEXT")
            }

        }
        .padding(.horizontal, 32)
        .navigationBarHidden(true)
    }
}

//MARK: - PREVIEW
struct BookingDateView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDateView(calendar: Calendar.current, monthsLayout: .vertical)
            .environmentObject(BookingViewModel())
    }
}
