const hamburger = document.querySelector("#toggle-btn");

hamburger.addEventListener("click", function(){
    document.querySelector("#sidebar").classList.toggle("expand");
})

//CHARTS
document.addEventListener("DOMContentLoaded", function() {
    //checking the flag from the homepage.js set
    setInterval(function() {
        if (localStorage.getItem("refreshOtherPage") === "true") {
            localStorage.removeItem("refreshOtherPage"); //to clear the flag
            location.reload(); //to refresh the page
        }
    }, 1000);

    const sidebar = document.getElementById('sidebar');
    const toggleBtn = document.getElementById('toggle-btn');
    const tooltipTriggerList = Array.from(document.querySelectorAll('[data-bs-toggle="tooltip"]'));

    const tooltips = tooltipTriggerList.map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

    toggleBtn.addEventListener('click', function () {
        sidebar.classList.toggle('collapsed');

        tooltips.forEach(tooltip => {
            if (sidebar.classList.contains('collapsed')) {
                tooltip.disable();
            } else {
                tooltip.enable();
            }
        });
    });
    
    if (!sidebar.classList.contains('collapsed')) {
        tooltips.forEach(tooltip => tooltip.enable());
    }
    
    
  //DAILY CHART
  fetch('/laundry_system/dashboard/configs_db/daily.php')
  .then(response => response.json())
  .then(data => {
      const ctx = document.getElementById('daychart').getContext('2d');
      const daychart = new Chart(ctx, {
          type: 'bar', 
          data: {
              labels: data.labels,
              datasets: [{
                  label: 'Requests in Day',
                  data: data.data,
                  backgroundColor: data.backgroundColors,
                  borderColor: data.borderColors,
                  borderWidth: 1
              }]
          },
          options: {
              responsive: true,
              plugins: {
                  title: {
                      display: true,
                      text: 'Daily Requests by Service and Category',
                      font: {
                          size: 14 
                      }
                  },
                  legend: {
                      display: true,
                      position: 'top',
                      labels: {
                          font: {
                              size: 12 
                          }
                      }
                  }
              },
              scales: {                                               
                  x: {
                      ticks: {
                          callback: function(value, index, values) {
                              // truncate or shorten labels if they are longer than 15 characters
                              return value.length > 15 ? value.substr(0, 15) + '...' : value;
                          }
                      }
                  },
                  y: {
                      beginAtZero: true
                  }
              }
          }
      });
  })
  .catch(error => console.error('Error fetching chart data:', error));

  //WEEKLY CHART
  fetch('/laundry_system/dashboard/configs_db/weekly.php')
    .then(response => response.json())
    .then(data => {
        const ctx = document.getElementById('weekchart').getContext('2d');
        const weekchart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: data.labels,
                datasets: [{
                    label: 'Weekly Requests by Service and Category',
                    data: data.data,
                    backgroundColor: data.backgroundColors,
                    borderColor: data.borderColors,
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: true,
                        position: 'bottom',
                        labels: {
                            color: '#000',
                            font: {
                                size: 12
                            }
                        }
                    },
                    title: {
                        display: true,
                        text: 'Weekly Requests by Service and Category',
                        font: {
                            size: 14
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                let label = tooltipItem.label || '';
                                let value = tooltipItem.raw || '';
                                return [
                                    `${label}: ${value}`, 
                                    `Requests Count: ${value}` 
                                ];
                            }
                        }
                    }
                }
            }
        });
    })
    .catch(error => console.error('Error fetching chart data:', error));

    //MONTHLY CHART
    fetch('/laundry_system/dashboard/configs_db/monthly.php')
    .then(response => response.json())
    .then(data => {
        console.log('Chart Data:', data); 
        const ctx = document.getElementById('monthchart').getContext('2d');
        const monthchart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: data.labels,
                datasets: [{
                    label: 'Orders in the Month',
                    data: data.data,
                    backgroundColor: data.backgroundColors,
                    borderColor: data.borderColors,
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'bottom',
                    },
                    title: {
                        display: true,
                        text: 'Monthly Requests by Service and Category',
                        font: {
                            size: 14
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                let label = tooltipItem.label || '';
                                let value = tooltipItem.raw || '';
                                return [
                                    `${label}: ${value}`, 
                                    `Requests Count: ${value}`
                                ];
                            }
                        }
                    }
                }
            }
        });
    })
    .catch(error => console.error('Error fetching chart data:', error));

    //YEARLY CHART
    fetch('/laundry_system/dashboard/configs_db/yearly.php')
    .then(response => response.json())
    .then(data => {
        const labels = data.labels;
        const yearData = {
            labels: labels,
            datasets: [{
                label: 'Requests in Year',
                data: data.data,
                backgroundColor: data.backgroundColors,
                borderColor: data.borderColors,
                borderWidth: 5,
                fill: true, 
            }]
        };

        const config = {
            type: 'line',
            data: yearData,
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Yearly Requests by Service and Category',
                        font: {
                            size: 14
                        }
                    },
                },
                scales: {
                    x: {
                        ticks: {
                            callback: function(value, index, values) {                                
                                //shorten labels if they are longer than 15 characters
                                return value.length > 15 ? value.substr(0, 15) + '...' : value;
                            }
                        }
                    },
                    y: {
                        beginAtZero: true
                    }
                }
            }
        };

        var yearchart = new Chart(
            document.getElementById('yearchart'),
            config
        );

    })
    .catch(error => console.error('Error fetching chart data:', error));

    // for logout
    const logoutModal = document.getElementById("logoutModal");
    const closeBtn = logoutModal.querySelector(".close");
    const noBtn = logoutModal.querySelector(".btn-no");

   $("#btn_logout").click(function() {
        $('#logoutModal').show();
   });

    // Close the modal when clicking the close button (×)
    if (closeBtn) {
        closeBtn.addEventListener("click", function() {
            logoutModal.style.display = "none"; 
        });
    }

    // Close the modal when clicking the 'No' button
    if (noBtn) {
        noBtn.addEventListener("click", function() {
            logoutModal.style.display = "none"; 
        });
    }

    // Close the modal when clicking outside the modal content
    window.addEventListener("click", function(event) {
        if (event.target === logoutModal) {
            logoutModal.style.display = "none";
        }
    });
});

        

    // ********* Notification MOdal ********* //

$('.pickup-checkbox').on('change', function() {
        var $checkbox = $(this);  
        var customerId = $checkbox.data('id');
        var remark = $checkbox.data('remark');

        // $.ajax({
        //     url: 'update_remark.php',
        //     type: 'POST',
        //     data: {
        //         customer_id: customerId,
        //         remark: remark,
        //         type: 'pickup' 
        //     },
        //     success: function(response) {
        //         console.log(response);  
        //         if (response === "Success") {
        //             $checkbox.closest('.notification-item').remove(); 
        //             updateActiveCounts();  
        //         } else {
        //             alert('Error: ' + response);  
        //         }
        //     },
        //     error: function(xhr, status, error) {
        //         alert("AJAX Error: " + error);  
        //     }
        // });

            Swal.fire({
                title: 'Are you sure?',
                text: 'Do you want to mark this as ' + remark + '?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes',
                cancelButtonText: 'No',
                reverseButtons: true,
                customClass: {
                    confirmButton: 'swal-confirm-btn',
                    cancelButton: 'swal-cancel-btn'
                }
            }).then((result) => {
                if (result.isConfirmed) {
            
                $.ajax({
                    url: 'update_remark.php',
                    type: 'POST',
                    data: {
                        customer_id: customerId,
                        remark: remark,
                        type: 'pickup'  
                    },
                    success: function(response) {
                        console.log('Response from update_remark.php:', response); 

                
                        if (remark === 'Claimed' || remark === 'Undelivered' || remark === 'Unclaimed' || remark === 'Pending') {
                            $checkbox.closest('.notification-item').remove(); 
                            updatePickupRemarks();  
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error('AJAX error:', error); 
                    }
                });
            } else {
                $checkbox.prop('checked', !$checkbox.prop('checked'));
            }
        });
    });

    // Update Delivery Remarks
    $('.delivery-checkbox').on('change', function() {
        var $checkbox = $(this);  
        var customerId = $checkbox.data('id');
        var remark = $checkbox.data('remark');

        // $.ajax({
        //     url: 'update_remark.php',
        //     type: 'POST',
        //     data: {
        //         customer_id: customerId,
        //         remark: remark,
        //         type: 'delivery'
        //     },
        //     success: function(response) {
        //         console.log(response);  
        //         if (response === "Success") {
                    
        //             $checkbox.closest('.notification-item').remove(); 
        //             updateActiveCounts();  
        //         } else {
        //             alert('Error: ' + response);  
        //         }
        //     },
        //     error: function(xhr, status, error) {
        //         alert("AJAX Error: " + error);  
        //     }
        // });
        var $checkbox = $(this);  
        var customerId = $checkbox.data('id');
        var remark = $checkbox.data('remark');

    
        Swal.fire({
            title: 'Are you sure?',
            text: 'Do you want to mark this as ' + remark + '?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes',
            cancelButtonText: 'No',
            reverseButtons: true,
            customClass: {
                confirmButton: 'swal-confirm-btn',
                cancelButton: 'swal-cancel-btn'
            }
            }).then((result) => {
                if (result.isConfirmed) {
        
                $.ajax({
                    url: 'update_remark.php',
                    type: 'POST',
                    data: {
                        customer_id: customerId,
                        remark: remark,
                        type: 'delivery'
                    },
                    success: function(response) {
                        console.log('Response from update_remark.php:', response);

                    
                        if (remark === 'Delivered' || remark === 'Undelivered' || remark === 'Unclaimed' || remark === 'Pending') {
                            $checkbox.closest('.notification-item').remove(); 
                            updateDeliveryRemarks();  
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error('AJAX error:', error);
                    }
                });
            } else {
            
                $checkbox.prop('checked', !$checkbox.prop('checked'));
            }
        });
    });


    // Update Pickup Remarks
    $('.pickup-checkbox').on('change', function() {
        var $checkbox = $(this);  
        var customerId = $checkbox.data('id');
        var remark = $checkbox.data('remark');

        console.log('Updating Pickup remark for Customer ID:', customerId, 'with remark:', remark);

        $.ajax({
            url: 'update_remark.php',
            type: 'POST',
            data: {
                customer_id: customerId,
                remark: remark,
                type: 'pickup'  
            },
            success: function(response) {
                console.log('Response from update_remark.php:', response); 

                if (remark === 'Claimed') {
                    $checkbox.closest('.notification-item').remove(); 
                    //updateActiveCounts();  
                    // updatePickupRemarks();  
                }
            },
            error: function(xhr, status, error) {
                console.error('AJAX error:', error); 
            }
        });
    });

    // Update Delivery Remarks
    $('.delivery-checkbox').on('change', function() {
        var $checkbox = $(this);  
        var customerId = $checkbox.data('id');
        var remark = $checkbox.data('remark');

        console.log('Updating Delivery remark for Customer ID:', customerId, 'with remark:', remark);

        $.ajax({
            url: 'update_remark.php',
            type: 'POST',
            data: {
                customer_id: customerId,
                remark: remark,
                type: 'delivery'
            },
            success: function(response) {
                console.log('Response from update_remark.php:', response);

                if (remark === 'Delivered') {
                    $checkbox.closest('.notification-item').remove(); 
                    //updateActiveCounts();  
                    updateDeliveryRemarks();  
                }
            },
            error: function(xhr, status, error) {
                console.error('AJAX error:', error);
            }
        });
    });

    // Function to update Pickup remarks in the UI
    function updatePickupRemarks() {
        console.log('Updating Pickup remarks...');
    }

    // Function to update Delivery remarks in the UI
    function updateDeliveryRemarks() {
        console.log('Updating Delivery remarks...');
    }

    $(document).ready(function() {
        $('#pickupModal').on('hidden.bs.modal', function () {
        location.reload();
        });

        $('#deliveryModal').on('hidden.bs.modal', function () {
        location.reload();
        });

        $('#rushModal').on('hidden.bs.modal', function () {
        location.reload();
    });
});