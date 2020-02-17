<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
        #add-product-form{
            margin-top: 100px;
            margin-bottom: 100px;
        }
    </style>
</head>
<body>

    <div class="container">

        <form id="add-product-form" action="<?= BASE_URL . 'save-add-product'?>" method="post" enctype="multipart/form-data">
            <h3>Thêm mới sản phẩm</h3>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Tên sản phẩm<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="form-group">
                        <label for="">Danh mục sản phẩm</label>
                        <select name="cate_id" class="form-control">
                            <option value="1">Danh mục 1</option>
                            <option value="1">Danh mục 2</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Giá sản phẩm<span class="text-danger">*</span></label>
                        <input type="number" class="form-control" name="price">
                    </div>
                    <div class="form-group">
                        <label for="">Lượt xem</label>
                        <input type="number" class="form-control" name="views">
                    </div>
                    <div class="form-group">
                        <label for="">Đánh giá</label>
                        <input type="number" class="form-control" name="star">
                    </div>
                    <div class="form-group">
                        <label for="">Mô tả ngắn</label>
                        <textarea name="short_desc" class="form-control" rows="5"></textarea>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-8 offset-2">
                            <img id="preview-img" src="<?= BASE_URL . 'public/images/default-image.jpg'?>" class="img-fluid">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Ảnh đại diện sản phẩm<span class="text-danger">*</span></label>
                        <input type="file" onchange="encodeImageFileAsURL(this)" class="form-control" name="image">
                    </div>
                    <div class="form-group">
                        <label for="">Thông tin chi tiết</label>
                        <textarea name="detail" class="form-control" rows="9"></textarea>
                    </div>
                </div>
                <div class="col-12 d-flex justify-content-end">
                    <button class="btn btn-primary" type="submit">Lưu</button>&nbsp;
                    <a href="<?= BASE_URL ?>" class="btn btn-danger">Hủy</a>
                </div>
            </div>
        </form>
    </div>


<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<?php if(isset($_GET['msg'])): ?>
    <input type="hidden" id="msg" value="<?= $_GET['msg']?>">
<?php endif;?>
<script>
    function encodeImageFileAsURL(element) {
        var file = element.files[0];
        var reader = new FileReader();
        reader.onloadend = function() {
            $('#preview-img').attr('src', reader.result);
            // console.log('RESULT', reader.result)
        }
        reader.readAsDataURL(file);
    }
    $(document).ready(function(){

    });
</script>
</body>
</html>