const base_url = window.location.origin;

$(document).on('click', '.row-site', function () {

    let id = $(this).data('id');
    let pekerjaan = $(this).data('pekerjaan');
    $.ajax({
        url: base_url+'/tower/tower/getSite',
        type: "POST",
        data: { id: id },
        dataType: "json",
        success: function (data) {
            $('#formUpdateSite').attr('action', base_url+'/tower/tower/update/' + data.id);
            $('#m_id').val(data.id);
            $('#m_project_id').val(data.project_id);
            $('#m_site_name_po').val(data.site_name_po);
            $('#m_site_name_tenant').val(data.site_name_tenant);
            $('#m_site_id').val(data.site_id);
            $('#m_site').val(data.site_name_tenant);
            $('#m_name').val(data.site_id);
            $('#m_start').val(data.start);
            $('#m_done').val(data.done);
            $('#m_tenant').val(data.tenant);
            $('#m_type_tower').val(data.type_tower);
            $('#m_height').val(data.height);
            $('#m_alamat').val(data.alamat);
            $('#m_latitude').val(data.latitude);
            $('#m_longitude').val(data.longitude);
            $('#m_pekerjaan').val(data.pekerjaan);
            $('#m_area').val(data.area);
            $('#m_mitra').val(data.mitra);
            $('#m_atp_done').val(data.atp_done);
            $('#m_atp_date').val(data.atp_date);
            $('#m_executive_general_manager').val(data.executive_general_manager);
            $('#m_manager_construction').val(data.manager_construction);
            $('#m_gm_area_office').val(data.gm_area_office);
            $('#m_manager_const').val(data.manager_const);
            $('#m_project_management').val(data.project_management);
            $('#m_waspang_area').val(data.waspang_area);

            $('#btn_update').attr('href', base_url + '/tower/update/' + data.id);
            $('#btn_delete').attr('href', base_url + '/tower/delete/' + data.id);
            $('#site_id').val(data.site_id);
            $('#pekerjaan_id').val(data.pekerjaan);
            $('#siteModal').modal('show');
            loadCategories(pekerjaan, data.site_id);
            loadPhotos(data.site_id);

        }
    });
    function loadCategories(pekerjaan, site_id) {

        $.get(base_url + '/tower/tower/get_categories/' + pekerjaan + '/' + site_id, function (res) {

            $('#photo-grid').html(res);
            loadPhotos(site_id); // jalankan setelah grid ada
        });

    }
    function loadPhotos(site_id) {

        $.ajax({

            url: base_url + '/tower/tower/get_photos/' + site_id,
            type: "GET",
            dataType: "json",

            success: function (res) {

                // kosongkan dulu
                $('.paste-slot img').attr('src', '');
                $('.paste-slot').removeClass('success');

                res.forEach(function (photo) {

                    let selector =
                        '.paste-slot[data-category="' + photo.category_id + '"][data-slot="' + photo.slot + '"]';

                    let slot = $(selector);
                    let imageUrl = base_url + '/tower/assets/uploads/site_photos/' + photo.file_path;
                    slot.find('img').attr(
                        'src',
                        base_url + '/tower/assets/uploads/site_photos/' + photo.file_path
                    ).show();
                    slot.find('a.lightbox-link')
                        .attr('href', imageUrl);
                    slot.find('p').hide();
                    slot.addClass('success');

                });

            }

        });

    }
    $(document).on('click', '.paste-slot img', function () {
        let src = $(this).attr('src');

        $('#imagePreviewModal img').attr('src', src);
        $('#imagePreviewModal').modal('show');
    });

    $(document).on('click', '.btn-delete-photo', function (e) {

        e.stopPropagation();

        let slot = $(this).closest('.paste-slot');

        let site_id = $('#site_id').val();
        let category = slot.data('category');
        let slot_no = slot.data('slot');

        if (!confirm("Hapus foto ini?")) return;

        $.post(base_url + '/tower/tower/delete_photo', {

            site_id: site_id,
            category_id: category,
            slot: slot_no

        }, function (res) {

            let data = JSON.parse(res);

            if (data.status == "success") {

                slot.removeClass('success error');

                slot.find('img').attr('src', '').hide();
                slot.find('p').show();

            }

        });

    });

    $('#btn_delete').click(function (e) {
        e.preventDefault();
        $id = $(this).data('id');
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, delete it!"
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: base_url + '/tower/tower/delete',
                    type: "POST",
                    data: { id: id },
                    dataType: "json",
                    success: function (data) {
                        if (data == 1) {
                            Swal.fire({
                                title: "Deleted!",
                                text: "Your file has been deleted.",
                                icon: "success"
                            });
                            setTimeout(location.reload(true), 3000)
                        }
                      

                    }
                });

             
            }
        });
    })

});

let currentSlot = null;

// klik slot
$(document).on('click', '.paste-slot', function () {
    $('.paste-slot').removeClass('active');

    $(this).addClass('active');
    currentSlot = $(this);

});


// paste image
// document.addEventListener('paste', function (e) {

//     if (!currentSlot) return;

//     let items = e.clipboardData.items;

//     for (let i = 0; i < items.length; i++) {

//         if (items[i].type.indexOf("image") !== -1) {

//             let file = items[i].getAsFile();

//             let reader = new FileReader();

//             reader.onload = function (event) {

//                 let img = currentSlot.find("img");

//                 img.attr("src", event.target.result);
//                 img.show();
//                 currentSlot.find("p").hide();
//             }

//             reader.readAsDataURL(file);
//             // status uploading
//             currentSlot.removeClass('success error');
//             currentSlot.addClass('uploading');
//             currentSlot.find('.spinner').show();


//             // upload ajax
//             let formData = new FormData();
//             let site_id = $('#site_id').val();
//             console.log(file);
//             console.log(site_id);
//             console.log(currentSlot.data('category'));
//             console.log(currentSlot.data('slot'));
//             formData.append("image", file);
//             formData.append("site_id", site_id);
//             formData.append("category_id", currentSlot.data('category'));
//             formData.append("slot", currentSlot.data('slot'));

//             $.ajax({

//                 url: base_url + '/tower/tower/upload_photo',
//                 type: "POST",
//                 data: formData,
//                 processData: false,
//                 contentType: false,

//                 success: function (res) {
//                     currentSlot.removeClass('uploading');
//                     currentSlot.find('.spinner').hide();
//                     let data = JSON.parse(res);

//                     if (data.status == "success") {

//                         currentSlot.addClass('success');

//                     } else {

//                         currentSlot.addClass('error');

//                     }
//                     console.log("upload success");

//                 },

//                 error: function () {

//                     currentSlot.removeClass('uploading');
//                     currentSlot.find('.spinner').hide();
//                     currentSlot.addClass('error');

//                 }

//             });

//         }

//     }

// });

function handlePasteImage(file) {

    if (!file || !(file instanceof Blob)) {
        console.log("Clipboard bukan file image", file);
        return;
    }

    let reader = new FileReader();

    reader.onload = function (event) {

        let img = currentSlot.find("img");

        img.attr("src", event.target.result);
        img.show();
        currentSlot.find("p").hide();

    }

    reader.readAsDataURL(file);

    currentSlot.removeClass('success error');
    currentSlot.addClass('uploading');
    currentSlot.find('.spinner').show();

    let formData = new FormData();
    let site_id = $('#site_id').val();

    const imageFile = new File([file], "clipboard.png", {
        type: file.type || "image/png"
    });

    formData.append("image", imageFile);
    formData.append("site_id", site_id);
    formData.append("category_id", currentSlot.data('category'));
    formData.append("slot", currentSlot.data('slot'));

    $.ajax({

        url: base_url + '/tower/tower/upload_photo',
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,

        success: function (res) {
console.log(res);
            currentSlot.removeClass('uploading');
            currentSlot.find('.spinner').hide();

            let data = JSON.parse(res);

            if (data.status == "success") {

                currentSlot.addClass('success');

            } else {

                currentSlot.addClass('error');

            }

        },

        error: function () {

            currentSlot.removeClass('uploading');
            currentSlot.find('.spinner').hide();
            currentSlot.addClass('error');

        }

    });

}

document.addEventListener('paste', function (e) {
    console.log("CLIPBOARD ITEMS:", e.clipboardData.items);
    console.log("CLIPBOARD FILES:", e.clipboardData.files);
    if (!currentSlot) return;

    let items = e.clipboardData.items;

    for (let i = 0; i < items.length; i++) {

        if (items[i].type.indexOf("image") !== -1) {

            let file = items[i].getAsFile();
            handlePasteImage(file);

        }

    }

    // fallback (excel / browser paste)
    let files = e.clipboardData.files;

    if (files.length > 0) {

        let file = files[0];

        if (file.type.indexOf("image") !== -1) {

            handlePasteImage(file);

        }

    }

});