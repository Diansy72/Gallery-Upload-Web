<?php
    include('autoloader.php');
    $page = isset($_GET['page']) ? $_GET['page']:1;
?>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/css/main.css">

    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>
<body>
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <div id="main">
        <div class="container">
            <!-- Header Section -->
            <header class="text-center py-5 bg-light" >
                <h1 class="display-4">Photo Gallery</h1>
                <hr class="my-4">
                <div class="container-1"></div>
                <hr class="my-4">
            </header>

            <!-- Upload Button and Category Dropdown -->
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="upload-btn pull-left">
                        <a href="#" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#uploadPopup">
                            <i class="fas fa-upload"></i> Upload Photos
                        </a>
                    </div>
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-lg btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right: 15px">
                            <i class="fas fa-filter"></i> Select by Category <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <?php foreach ($photoGallery->categories() as $key => $value) { ?>
                                <li><a href="#" data-value="<?=$value->id?>"><?=$value->nama?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="photo-gallery">
                        <div id="galleryContainer">
                            <div class="grid-sizer"></div>
                            <?php echo $photoGallery->list($page); ?>
                            <div class="grid-item--width2"></div>
                        </div><!-- /galleryContainer -->
                        <div class="page-load-status">
                              <p class="infinite-scroll-request"><img src="assets/js/loader.gif"></p>
                              <p class="infinite-scroll-last">End of content</p>
                              <p class="infinite-scroll-error">No more images to load</p>
                        </div>
                        <div class="pagination">
                            <?php echo $photoGallery->next($page); ?>
                        </div>
                    </div><!-- /photo-gallery -->
                </div>
            </div>            

            <footer>
                <p>&copy; Basis Data 2025</p>
            </footer>

        </div> <!-- /container -->        

    </div> <!-- /main -->

    <!-- Modal Upload -->
    <div class="modal fade" id="uploadPopup" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Upload Photos</h4>
            </div>
            
            <form method="post" id="upload" action="process.php?action=upload"> 
                <div class="modal-body">           
                    <input type="hidden" name="image_form_submit" value="1">
                    
                    <div class="form-group">
                        <label for="photoUpload">Choose Images</label>
                        <input type="file" name="photo[]" id="photoUpload" multiple="true" accepts="image/*" class="form-control-file" />
                    </div>
                    
                    <div class="form-group">
                        <label for="imageDescription">Image Description</label>
                        <textarea name="desc" id="Description" rows="2" placeholder="Enter a description for your image(s)..." class="form-control">
                    
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="category">Category</label>
                        <select name="category" id="category" class="form-control">
                            <?php
                            foreach ($photoGallery->categories() as $key => $value) {
                            ?>
                                <option value="<?=$value->id?>"><?=$value->nama?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <img src="assets/js/loader.gif" class="loader">
                            <div id="image-holder">
                                <div class="grid-thumb-sizer"></div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="modal-footer">
                    <div class="upload-progress-container">
                        <div id="progress-wrp">
                            <div class="progress-bar"></div>
                            <div class="status">0%</div>
                            <div class="clear"></div>
                        </div>
                        <div id="output"><!-- error or success results --></div>
                    </div>
                    <input type="submit" class="btn btn-primary" id="uploadBtn" value="Upload" disabled="disabled">
                </div>
            </form>
        </div>
    </div>
</div>
    <!-- Modal Gallery -->
    <div class="modal fade" id="galleryPopup" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-title gallery-title">
                        <div class="title-action">
                            <a href="#" id="edit-title"><span class="glyphicon glyphicon-pencil"></span></a>
                            <span id="photo-title"></span>
                        </div>
                        <form class="form-inline form-title" >
                            <input type="text" name="photoTitle" class="form-control" >
                            <button class="btn btn-primary" id="edit-title-update" data-id="">Update</button>
                            <button class="btn btn-default" id="edit-title-cancel">Cancel</button>
                        </form>

                    </div>  
                </div>
                <div class="modal-body">        
                    <div id="photo-img"></div>      
                    <a id="delete-link" class="btn btn-danger" style="margin-top: 15px;">Delete</a>
                    <a href="#" id="edit-desc"><button class="btn btn-default" style="margin-top: 15px;">Edit Deskripsi</button></a>
                    <!-- <div id="description"></div> Tambahkan elemen ini untuk menampilkan deskripsi -->
                </div>
                <div id="photo-img"></div>
                <div class="modal-footer">
                    <div class="nav-controls">
                        <a class="left carousel-control" href="#prev" id="slide-prev" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#next" id="slide-next" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                        <div class="gallery-desc">
                            <div class="desc-action">
                                <p id="description"></p>
                            </div>
                            <form class="form-inline form-desc">
                                <textarea type="text" rows="1" cols="116" name="photoDesc" class="form-control" placeholder="Edit photo description" style="margin-bottom:10px;"></textarea>
                                <div class="button-group">
                                <button class="btn btn-primary btn-sm" id="edit-desc-update" data-id="">Update</button>
                                <button class="btn btn-default btn-sm" id="edit-desc-cancel">Cancel</button>
                                </div>
                            </form>
                        </div>
                    <div class="photo-tags">
                        <span class="glyphicon glyphicon-tags tag-icon"></span> 
                        <div id="tags">
                        </div>
                        <div class="add-tag-form">
                            <form class="form-inline form-tag">
                                <input type="text" name="tag" class="form-control">
                                <button class="btn btn-default" id="add-tag" data-id="">Add Tag</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/masonry.pkgd.min.js"></script>
    <script type="text/javascript" src="assets/js/infinite-scroll.pkgd.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.form.js"></script>
    

    <script src="assets/js/main.js"></script>
</body>
</html>
