$(function () {
  // 画面遷移を検知
  $(document).on('turbolinks:load', function () {
    $('[data-provider="summernote"]').each(function(){
      $(this).summernote({
        toolbar: [
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['font', ['strikethrough', 'superscript', 'subscript']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']]
        ],
      placeholder: "本文を入力してください",
      lang: "ja-JP",
      height: 500,
      fontNames: ["YuGothic","Yu Gothic","Hiragino Kaku Gothic Pro","Meiryo","sans-serif", "Arial","Arial Black","Comic Sans MS","Courier New","Helvetica Neue","Helvetica","Impact","Lucida Grande","Tahoma","Times New Roman","Verdana"],
      });
    })
    // lengthを呼び出すことで、#calendarが存在していた場合はtrueの処理がされ、無い場合はnillを返す
    if ($('#calendar').length) {
      function eventCalendar() {
          return $('#calendar').fullCalendar({
          });
      };
      function clearCalendar() {
          $('#calendar').html('');
      };

      $(document).on('turbolinks:load', function () {
          eventCalendar();
      });
      $(document).on('turbolinks:before-cache', clearCalendar);

      $('#calendar').fullCalendar({
        events: '/events.json',
        timeFormat: "H:mm",
        titleFormat: 'YYYY年 M月',
        dayNamesShort: ['日','月','火','水','木','金','土'],
        header: {
          left: 'prev, next',
          center: 'title',
          right: 'month, agendaWeek, agendaDay, listMonth',
        },
        buttonText: {
          month: '月',
          week: '週',
          day: '日',
          list: 'タスクリスト',
        },
      });
    }
  });
});