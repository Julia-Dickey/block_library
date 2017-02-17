
var initialize_calendar;
initialize_calendar = function() {
  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      eventClick: function(event) {
        if (event.url) {
            window.open(event.url);
            return false;
        }
      },
      // select: function(start, end) {
      //   $.getScript('/events/new', function() {
      //     $('#event_date_range').val(moment(start).format("MM/DD/YYYY HH:mm") + '&mdash;' + moment(end).format("MM/DD/YYYY HH:mm"));
      //     date_range_picker();
      //     $('.start_hidden').val(moment(start).format('YYYY-MM-DD HH:mm'));
      //     $('.end_hidden').val(moment(end).format('YYYY-MM-DD HH:mm'));
      //   });
      //
      //   calendar.fullCalendar('unselect');
      // },
      header: {
        left: 'prev',
        center: 'title',
        right: 'month,agendaWeek,agendaDay next'
      },
      // TO_DO_MAKE MODAL OR SHOW PAGE COME UP WHEN YOU CLICK THE ITEM ON THE CALENDAR
      // eventRender: function (event, element) {
      //   element.attr('href', 'javascript:void(0);');
      //   element.click(function() {
            // $("#startTime").html(moment(event.start).format('MMM Do h:mm A'));
            // $("#endTime").html(moment(event.end).format('MMM Do h:mm A'));
            // $("#eventInfo").html(event.description);
            // $("#eventLink").attr('href', event.url);
            // $("#eventContent").dialog({ modal: true, title: event.title, width:350});
      //   });
      // },

      
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: '/events.json',

      select: function(start, end) {
        $.getScript('/events/new', function() {});

        calendar.fullCalendar('unselect');
      },

      eventDrop: function(event, delta, revertFunc) {
        event_data = {
          event: {
            id: event.id,
            start: event.start.format(),
            end: event.end.format()
          }
        };
        $.ajax({
            url: event.update_url,
            data: event_data,
            type: 'PATCH'
        });
      },

      eventClick: function(event, jsEvent, view) {
        $.getScript(event.edit_url, function() {});
      }
    });
  })
};
$(document).on('turbolinks:load', initialize_calendar);
