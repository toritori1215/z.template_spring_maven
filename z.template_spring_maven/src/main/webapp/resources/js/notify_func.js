 $(function() {
     setTimeout(function() {
         $.notify({
             // options
             icon: '',
             title: "<a href=\"tour_detail?pNo=3\" target=\"_blank\"><h4>Most Popular booking</h4>",
             message: "<figure><img src=\"resources/z.SiliconVillage/img/Golf1.jpg\"></figure><p>De Triomphe Golf Tour.</a>"
         }, {
             // settings
             icon_type: 'image',
             type: 'info',
             delay: 500,
             timer: 3000,
             z_index: 9999,
             showProgressbar: false,
             placement: {
                 from: "bottom",
                 align: "right"
             },
             animate: {
                 enter: 'animated bounceInUp',
                 exit: 'animated bounceOutDown'
             },
         });
     }, 5000); // change the start delay
 });