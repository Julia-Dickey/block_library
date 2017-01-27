var initialize_calendar;
initialize_calendar = function() {
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev,next',
        center: 'title',
        right: 'month,agendaWeek,listWeek'
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      // events: {
      //       url: '/events',
      //       cache: true,
      //       type: 'GET',
      //       data:{appdata: $('#appdata').val()}
      //     },
      events: '/events.json',
      select: function(start, end) {
        $.getScript('/events/new', function() {
          $('#event_date_range').val(moment(start).format("MM/DD/YYYY HH:mm") + '&mdash;' + moment(end).format("MM/DD/YYYY HH:mm"));
          date_range_picker();
          $('.start_hidden').val(moment(start).format('YYYY-MM-DD HH:mm'));
          $('.end_hidden').val(moment(end).format('YYYY-MM-DD HH:mm'));
        });

        calendar.fullCalendar('unselect');
      }

    });
  });
};
$(document).on('turbolinks:load', initialize_calendar);
