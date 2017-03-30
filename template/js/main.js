$(document).ready(function () {
    function bottomFooter() {
        if ($('section').height() + $('#header').height() + 70 < $(window).height()) {
            $('.page-footer').css("position", "absolute");
        }
        else $('.page-footer').css("position", "relative");
    }

    bottomFooter();
    $(window).resize(bottomFooter);

    $("#new").click();
    $('#datetimepicker1').datetimepicker({
        format: 'YYYY-MM-DD HH:mm'

    });

    $(":checkbox").change(function () {
        var id = $(this).attr("data-id");
        if (this.checked) {
            $.post('/task/updatetask/' + id + '', {complete: 1, id: id}, function (data) {
            });
        }
        else {
            $.post('/task/updatetask/' + id + '', {complete: 0, id: id}, function (data) {
            });
        }
    });
//Выбор исполнителя
    $(".dev").change(function () {

        var id = $(this).val();
        var id_task = $(this).find(':selected').data('id');
        $.post('/task/updatedev/' + id + '', {id: id, id_task: id_task}, function (data) {
        });

    });


    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 17 // Creates a dropdown of 15 years to control year
    });
});
