

import '../../widgets/exports/exports.dart';

class Calander extends StatefulWidget {
  Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
bool showEvents = true;
final List<NeatCleanCalendarEvent> _eventList = [
  NeatCleanCalendarEvent(
    "AllDay",
      startTime: DateTime(DateTime.now().year,
       DateTime.now().month,
         DateTime.now().day + 2, 6, 0),
      endTime: DateTime(DateTime.now().year,
       DateTime.now().month,
          DateTime.now().day + 2, 17, 0),
      color: Colors.pink,
      wide: false,
      isAllDay: false),
      NeatCleanCalendarEvent(
      'Event A',
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 10, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 12, 0),
      description: 'A special event',
      color: Colors.red[700],
    ),
    NeatCleanCalendarEvent(
      'Event A',
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 10, 0),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 12, 0),
      description: 'A special event',
      color: Colors.yellow[700],
    ),
 
];

 

  @override
  void initState() {
    super.initState();

    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
       Container(
        height: 500.h,
        width: MediaQuery.of(context).size.width,
         child: Calendar(
            startOnMonday: true,
            weekDays: ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
            eventsList: _eventList,
            isExpandable: true,
            eventDoneColor: Colors.green,
            selectedColor: Colors.pink,
            selectedTodayColor: Colors.blue,
            todayColor: Colors.blue,
            eventColor: null,
            locale: 'en_US',
            todayButtonText: 'English',
            isExpanded: true,
            eventTileHeight: 70,
            expandableDateFormat: 'EEEE, dd. MMMM yyyy',
            onEventSelected: (value) {
              print('Event selected ${value.summary}');
            },
            onEventLongPressed: (value) {
              print('Event long pressed ${value.summary}');
            },
            onMonthChanged: (value) {
              print('Month changed $value');
            },
            onRangeSelected: (value) {
              print('Range selected ${value.from} - ${value.to}');
            },
            datePickerType: DatePickerType.date,
            dayOfWeekStyle: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 15.sp),
            showEvents: showEvents,
          ),
       ),
      ));

  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }

}








































