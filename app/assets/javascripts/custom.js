


$(document).ready(function(){


    $('#patient_abnormal').change(function() {

        if ( ! this.checked) {
            $('.radio').prop('checked', false);
        }

    });



    $('#patient_tbx_1').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })

    $('#patient_tbx_2').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })


    $('#patient_tbx_3').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })

    $('#patient_hcying_1').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })

    $('#patient_hcying_2').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })


    $('#patient_hcying_3').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })

    $('#patient_hcying_4').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
        $('#patient_fibrosis').not(this).prop('checked', true);
    })

    $('#patient_gg_1').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_gg_2').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })


    $('#patient_gg_3').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_gg_4').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_ret_1').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_ret_2').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })


    $('#patient_ret_3').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_ret_4').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_emph_1').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_emph_2').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })


    $('#patient_emph_3').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_emph_4').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

    $('#patient_fibrosis').on('change', function(){
        $('#patient_abnormal').not(this).prop('checked', true);
    })

});
