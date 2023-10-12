/*
 * This file manages product gallery
 * */

var imageSize = 16;

/*
 * Initialize Gallery
 * */
function initializeGallery() {
    loadProductGallery();
    attachDropzoneToUploadFiles();
}

/*
 * refresh Gallery
 * */
function refreshGallery() {
    loadProductGallery();
    attachDropzoneToUploadFiles();
}



function generateMediaGallery() {
    var line = '';

    if (product.mediaSources == null)
        return;
    var mediaSources = product.mediaSources.split(',');
    var line = '';
    for (var i = 0; i < mediaSources.length; i++) {
        var mediaSource = mediaSources[i].trim();
        if (mediaSource === '') {
            continue;
        }
        line += `<div class='imageContainer' style="position: relative; max-width:170px;margin-bottom:20px;">`;
        if (isImage(mediaSource)) {
            line += `<img src="${mediaSource}" title="${product.images[i]?.description ?? ''}" class="imageGallery">`;
        } else if (isVideo(mediaSource)) {
            line += `<video controls width="150">
                          <source src="${mediaSource}" type="video/mp4">
                          Your browser does not support the video tag.
                      </video>`;
        } else if (isPDF(mediaSource)) {
            line += `<object data="${mediaSource}" width="150" height="100" type="application/pdf">
                          <embed src="${mediaSource}" type="application/pdf" />
                      </object>`;
        }

        line += `
                     <div class="primaryButton" style="top:2px;right:5px;" title="Delete Image" onclick="deleteImage('${mediaSource}');">
                       <i class="fas fa-times s-red"></i>
                     </div>`;
        line += "</div>";
    }
    $('.galleryMedia').html(line);
}

function generateVariantGallery() {
    var line = '';
    
    if (productVariant == null || productVariant.images== null)
        return;
    var mediaSources = productVariant.images.split(',');
    var line = '';
    for (var i = 0; i < mediaSources.length; i++) {
        var mediaSource = mediaSources[i].trim();
        if (mediaSource === '') {
            continue;
        }
        line += `<div class='imageContainer' style="position: relative; max-width:170px;margin-bottom:20px;margin-right:15px;" id='number_${i}'>`;
        line += `<img src="${mediaSource}"  class="imageGallery">`;
        
        line += `
                     <div class="primaryButton" style="top:2px;right:5px;" title="Delete Image" onclick="deleteVariantImage('${i}','${mediaSource}');">
                       <i class="fas fa-times s-red"></i>
                     </div>`;
        line += "</div>";
    }
    $('#galleryVariant').html(line);
}

function isImage(url) {
    return /\.(jpeg|jpg|png|gif)$/i.test(url);
}

function isVideo(url) {
    return /\.(mp4|mov)$/i.test(url);
}

function isPDF(url) {
    return /\.(pdf)$/i.test(url);
}

function loadProductGallery() {
    var line = '';

    $('#gallery').html('');
    for (var i = 0; i < product.images?.length; i++) {

        if (!product.images[i].isPrimary) {
            line += `<div class='imageContainer' style="position: relative" id="img_` + product.images[i].id + `">`;
            line += `<img src="` + product.images[i].location + `" title="` + (product.images[i].description ?? '') + `" class="imageGallery " >`;
            if (product.images[i].id != null && product.images[i].id != '') {
                line += `<div class="primaryButton" style="bottom:5px;right:5px;color: #FFF3C4;" title="Make Primary Image" onclick="makePrimary('` + product.images[i].id + `');">
                                    <i class="anticon anticon-star"></i>
                                 </div>
                                 <div class="primaryButton" style="top:2px;right:5px;" title="Delete Image" onclick="deleteImage('` + product.images[i].id + `');">
                                   <i class="fas fa-times s-red"></i>
                                 </div>
                                 `;
            }
            line += "</div>";
        }

    }
    var primary = product.images?.find(x => x.isPrimary == true)
    if (primary != null) {
        var xline = `<div class='imageContainer isPrimary' style="position: relative "  id="img_` + primary.id + `">`;
        xline += `<img src="` + primary.location + `" title="` + (primary.description ?? '') + `" class="imageGallery isPrimary">
                                <div class="primaryButton" style="bottom:10px;right:15px;cursor:unset;font-size:2.5rem; color: #FFF3C4; text-shadow: 0 0 10px rgba(0,0,0,.85);">
                                    <i class="anticon anticon-star"></i>
                                </div>
                            </div>`;
        $('#mainPic').html(xline);

    }

    line += `
            <div id="productPic" style="flex:1;order: 3;min-width:55%;">
                <form class="dropzone needsclick dz-clickable" id="uploadFiles" method="post" enctype="multipart/form-data" style="padding: 30px 30px">
                    <div class="dz-message needsclick">
                        <button type="button" class="dz-button">
                            <h3> Drop Product Images.</h3>
                            <span class="note needsclick">You can drop multiple files at once</span>
                        </button><br>
                    </div>
                    <input type="file" name="Images" multiple class="dz-hidden-input" style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
                </form>
            </div>`;

    $('#gallery').append(line);
}



function toggleMediaModal() {
    $('#mediaType').val('');
    $('#mediaName').val('');
    $('#mediaDescription').val('');
    $('#mediaModal').modal('show');
    attachDropzoneToPosterFiles();
    attachDropzoneToMediaFiles();
    $("#saveMediaButton").attr('onclick', `saveMedia()`);
    $("#saveMediaButton").text('Add');
}


function showEditMediaMdal(madiaId) {
    if (!product || !product.productMedias?.length) {
        toastr.error('Inavlaid Product');
        return;
    }
    var productMedia = product.productMedias.find(media => media.id == madiaId);
    if (!productMedia) {
        toastr.error('Product Media not found');
        return;
    }
    attachDropzoneToPosterFiles()
    mediaFile = productMedia.url;
    posterFile = productMedia.poster;

    $('#mediaType').val(productMedia.type);
    $('#mediaType').trigger('change');
    $('#mediaName').val(productMedia.name);
    $('#mediaDescription').val(productMedia.description);
    $('#mediaModal').modal('show');
    if (productMedia.type == 1) {
        loadPic(productMedia.url, "Media")
    } else {
        //attachDropzoneToMediaFiles(productMedia.type);
    }
    loadPic(productMedia.poster, "Poster")
    $("#saveMediaButton").attr('onclick', `saveMedia('${madiaId}')`);
    $("#saveMediaButton").text('Update');
}

function attachDropzoneToUploadFiles() {
    $("#uploadFiles").dropzone({
        init: function () {
            this.on("success", function (file) {
                handleImageDropSuccess(file);
            });
        },
        paramName: "Images", // The name that will be used to transfer the file
        url: "/Ajax/SlickyImage",
        headers: {
            "RequestVerificationToken": GetAntiXsrfRequestToken
        },
        maxFilesize: 2.0, // MB
        addRemoveLinks: true,
        dictResponseError: 'Error while uploading file!',
        previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>",
        removedfile: function (file) {
            handleRemoveImageFile(file)
        }
    });
}


function attachDropzoneToMediaFiles(mediaId) {

    $('#mediaURL').html(`
                                <div class="dropzone needsclick dz-clickable" style="padding: 30px 30px">
                                    <div class="dz-message needsclick">
                                            <h3> Awaiting </h3>
                                        <span class="note needsclick">You need to pick a media type</span>
                                    </div>
                                </div>`);
    if (mediaId == null || mediaId == '')
        return;
    if (mediaId == mediaTypesObject.page) {
        // load DD Pages...
        return;
    }
    mediatype = mediaTypes[mediaId];

    let line = `
            <div id="SeeMedia" class="height-3" style="text-align: center;display: none;">
                <img title="Client Picture" style="max-width:100%;" id="Media" />
            </div>
            <div id="ChangeMedia" style="text-align: right; display: none;">
                <button type="button" class="btn btn-light" onclick="changePicture('Media')">Change Media</button>
            </div>
            <div id="AddMedia">
                <div class="form-group">
                    <form class="dropzone needsclick dz-clickable" id="mediaFile" method="post" enctype="multipart/form-data" style="padding: 30px 30px">
                    <div class="dz-message needsclick">
                        <button type="button" class="dz-button">
                            <h3> Drop ${mediatype} file</h3>
                            <span class="note needsclick">You can only drop 1 file at a time (50 MBs Max Per file)</span>
                        </button><br>
                    </div>
                    <input type="file" name="MediaImages" multiple class="dz-hidden-input" style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
                </form>
                </div>
            </div>
    `;

    $('#mediaURL').html(line);

    $("#mediaFile").dropzone({
        init: function () {
            this.on("success", function (file) {
                handleMediaDropSuccess(file);
            });
        },
        paramName: "Images", // The name that will be used to transfer the file
        url: "/Ajax/SlickyImage",
        headers: {
            "RequestVerificationToken": GetAntiXsrfRequestToken
        },
        maxFilesize: 50.0, // MB
        addRemoveLinks: true,
        maxFiles: 1,
        dictResponseError: 'Error while uploading file!',
        previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>",
        removedfile: function (file) {
            handleRemoveImageFile(file);
        }
    });
}

function attachDropzoneToPosterFiles() {


    $('#posterURL').html('');

    
    let line = `
            <div id="SeePoster" class="height-3" style="text-align: center;display: none;">
                <img title="Client Picture" style="max-width:100%;" id="Poster" />
            </div>
            <div id="ChangePoster" style="text-align: right; display: none;">
                <button type="button" class="btn btn-light" onclick="changePicture('Poster')">Change Poster</button>
            </div>
            <div id="AddPoster">
                <div class="form-group">
                    <form class="dropzone needsclick dz-clickable" id="posterFile" method="post" enctype="multipart/form-data" style="padding: 30px 30px">
                        <div class="dz-message needsclick">
                            <button type="button" class="dz-button">
                                <h3> Image file</h3>
                                <span class="note needsclick">Poster image for the media (2 MBs Max)</span>
                            </button><br>
                        </div>
                        <input type="file" name="PosterImages" multiple class="dz-hidden-input" style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
                    </form>
                </div>
            </div>`;

    $('#posterURL').append(line);

    $("#posterFile").dropzone({
        init: function () {
            this.on("success", function (file) {
                handlePosterDropSuccess(file);
            });
        },
        paramName: "Images", // The name that will be used to transfer the file
        url: "/Ajax/SlickyImage",
        headers: {
            "RequestVerificationToken": GetAntiXsrfRequestToken
        },
        maxFilesize: 2.0, // MB
        addRemoveLinks: true,
        maxFiles: 1,
        dictResponseError: 'Error while uploading file!',
        previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>",
        removedfile: function (file) {
            handleRemoveImageFile(file)
        }
    });
}

function attachDropzoneToVariantFiles() {


    $('#variantURL').html('');


    let line = `
            <div  style="flex:1;order: 3;min-width:55%;">
                <form class="dropzone needsclick dz-clickable" id="variantFile" method="post" enctype="multipart/form-data" style="padding: 30px 30px">
                    <div class="dz-message needsclick">
                        <button type="button" class="dz-button">
                            <h3> Image file</h3>
                            <span class="note needsclick">Alternative Image for this variant (2 MBs Max)</span>
                        </button><br>
                    </div>
                    <input type="file" name="VariantImages" multiple class="dz-hidden-input" style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
                </form>
            </div>`;

    $('#variantURL').append(line);

    $("#variantFile").dropzone({
        init: function () {
            this.on("success", function (file) {
                handleVariantDropSuccess(file);
            });
        },
        paramName: "Images", // The name that will be used to transfer the file
        url: "/Ajax/SlickyImage",
        headers: {
            "RequestVerificationToken": GetAntiXsrfRequestToken
        },
        maxFilesize: 2.0, // MB
        addRemoveLinks: true,
        maxFiles: 1,
        dictResponseError: 'Error while uploading file!',
        previewTemplate: "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-image\"><img data-dz-thumbnail /></div>\n  <div class=\"dz-details\">\n    <div class=\"dz-size\"><span data-dz-size></span></div>\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n  </div>\n  <div class=\"dz-progress\"><span class=\"dz-upload\" data-dz-uploadprogress></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n  <div class=\"dz-success-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Check</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <path d=\"M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" stroke-opacity=\"0.198794158\" stroke=\"#747474\" fill-opacity=\"0.816519475\" fill=\"#FFFFFF\" sketch:type=\"MSShapeGroup\"></path>\n      </g>\n    </svg>\n  </div>\n  <div class=\"dz-error-mark\">\n    <svg width=\"54px\" height=\"54px\" viewBox=\"0 0 54 54\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\">\n      <title>Error</title>\n      <defs></defs>\n      <g id=\"Page-1\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\">\n        <g id=\"Check-+-Oval-2\" sketch:type=\"MSLayerGroup\" stroke=\"#747474\" stroke-opacity=\"0.198794158\" fill=\"#FFFFFF\" fill-opacity=\"0.816519475\">\n          <path d=\"M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z\" id=\"Oval-2\" sketch:type=\"MSShapeGroup\"></path>\n        </g>\n      </g>\n    </svg>\n  </div>\n</div>",
        removedfile: function (file) {
            handleRemoveImageFile(file)
        }
    });
}

var mediaFile = '';
var posterFile = '';
function handleImageDropSuccess(file) {
    var filename = file.xhr.response.replace(/"/g, "").replace('[', '').replace(']', '');
    var newImage = new Object();
    newImage.location = filename;
    newImage.id = e7();
    newImage.productId = product.id;
    newImage.imageSize = imageSize
    if (!product.images) {
        product.images = [];
    }
    if (product.images.length == 0) {
        newImage.isPrimary = true;
    }
    product.images.push(newImage);

    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'images']
    }
    refreshGallery();
    if (file.previewElement) {
        return file.previewElement.classList.add("dz-success");
    }
}

function handleMediaDropSuccess(file) {
    var filename = file.xhr.response.replace(/"/g, "").replace('[', '').replace(']', '');

     mediaFile=filename

    if (file.previewElement) {
        return file.previewElement.classList.add("dz-success");
    }
}

function handlePosterDropSuccess(file) {
    var filename = file.xhr.response.replace(/"/g, "").replace('[', '').replace(']', '');
    
    posterFile = filename;

    if (file.previewElement) {
        return file.previewElement.classList.add("dz-success");
    }
}

function handleVariantDropSuccess(file) {

    var filename = file.xhr.response.replace(/"/g, "").replace('[', '').replace(']', '');
    if (productVariant.images == null)
        productVariant.images='';

    productVariant.images += filename + ',';

    if (file.previewElement) {
        return file.previewElement.classList.add("dz-success");
    }

}

/*
 * handle remove file
 * */
function handleRemoveImageFile(file) {
    file.previewElement.remove();
    var filename = file.xhr.response.replace(/"/g, "").replace('[', '').replace(']', '');

    posterFile = filename;

    if (file.previewElement) {
        return file.previewElement.classList.add("dz-success");
    }

}


function saveMedia(id) {
    if (mediaFile == '') {
        toastr.error("You have not uploaded a valid media");
        return;
    }
    if (posterFile == '') {
        toastr.error("You have not uploaded a valid poster image")
        return;
    }
    if ($('#mediaType').val() == '' || $('#mediaType').val() == null) {
        toastr.error("You have not selected a valid type");
        return;
    }
    if ($('#mediaName').val() == '' || $('#mediaName').val() == null) {
        toastr.error("You have not selected a valid media name");
        return;
    }
    if ($('#mediaType').val() == '' || $('#mediaType').val() == null) {
        toastr.error("You have not selected a valid type");
        return;
    }

    var myMedia = {
        id: id ?? e7(),
        name: $('#mediaName').val(),
        type: $('#mediaType').val(),
        description: ($('#mediaDescription').val() ?? ''),
        poster: posterFile,
        url: mediaFile,
        productId: product.id
    }

    if (product.productMedias == null)
        product.productMedias = [];
    if (id) {
        product.productMedias = product.productMedias.map(media => media.id != id
            ? media
            : myMedia
        )
    } else {
        product.productMedias.push(myMedia);
    }

    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'productMedias']
    }
    $('#mediaModal').modal('hide');
    showProductMedias();
}

function confirmDeleteMedia(id) {
    var form = $('<div class="row"><div class="col-md-12">Are you sure you want to delete this Media?</div></div>');

    var footerButtons = `<div class="card-actionbar-row">
        <button type="button" class="ant-btn btn-cta  btn-light-gray" onclick="$('#genericModal').modal('hide')">Cancel</button>
        <button type="button" class="ant-btn btn-cta  btn-secondary webpages_write" onclick="  deleteMedia('` + id + `');">Confirm</button>
        </div>`;
    $('#modalFooter').html(footerButtons);
    // display the form in the modal
    $('#modalBody').html(form);
    $('#genericModalTitle').html('Delete Media');
    $('#genericModal').modal('show');

}

function deleteMedia(madiaId) {

    if (product.productMedias == null)
        product.productMedias = [];
    else {
        product.productMedias = product.productMedias.filter(media => media.id != madiaId);
    }

    if (MODE != 'ADD') {
        modifiedEntity = [...(modifiedEntity ?? []), 'productMedias']
    }
    $('#genericModal').modal('hide');
    showProductMedias();
}


function showProductMedias() {

    $('#productMedias').html('');
    
    if (product.productMedias == null)
        return;
    product.productMedias.forEach(x => {
        var row = '<tr>';
        row += '<td><img src="' + x.poster + '" style="max-width:50px;"></td>';
        row += '<td>' + mediaTypes[x.type] + '</td>';
        row += '<td>' + x.name + '</td>';
        row += '<td>' + x.description + '</td>';
        row += `<td><a class="btn btn-slick text-primary"onClick="showEditMediaMdal('${x.id}');return false;"><i class="fas fa-pencil-alt"></i></a> <a class="btn btn-slick text-warning"  onClick="confirmDeleteMedia('${x.id}');return false;"><i class="fa fa-trash"></i></a></tr>`;
        $('#productMedias').append(row);
    });

}