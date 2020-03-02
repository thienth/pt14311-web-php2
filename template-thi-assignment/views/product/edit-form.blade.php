@extends('layouts.admin')
@section('title', "Tạo sản phẩm")
@section('content')
    <style>
        #add-product-form{
            margin-bottom: 100px;
        }
        .form-group label.error{
            color: indianred;
        }
    </style>


    <form id="edit-product-form" action="{{BASE_URL . 'products/save-edit-product'}}" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="{{$model->id}}">
        <h3>Thêm mới sản phẩm</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Tên sản phẩm<span class="text-danger">*</span></label>
                    <input type="text" class="form-control"
                           value="{{$model->name}}"
                           name="name">
                </div>
                <div class="form-group">
                    <label for="">Danh mục sản phẩm</label>
                    <select name="cate_id" class="form-control">
                        @foreach ($cates as $ca)
                        <option
                                @if($ca->id == $model->cate_id)
                                    selected
                                @endif
                                value="{{$ca->id}}">{{$ca->cate_name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Giá sản phẩm<span class="text-danger">*</span></label>
                    <input type="number" class="form-control" value="{{$model->price}}" name="price">
                </div>
                <div class="form-group">
                    <label for="">Lượt xem</label>
                    <input type="number" class="form-control" value="{{$model->views}}" name="views">
                </div>
                <div class="form-group">
                    <label for="">Đánh giá</label>
                    <input type="number" class="form-control" value="{{$model->star}}" name="star">
                </div>
                <div class="form-group">
                    <label for="">Mô tả ngắn</label>
                    <textarea name="short_desc" class="form-control" rows="5">{{$model->short_desc}}</textarea>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-8 offset-2">
                        <img id="preview-img" src="{{BASE_URL . $model->image}}" class="img-fluid">
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Ảnh đại diện sản phẩm<span class="text-danger">*</span></label>
                    <input type="file" onchange="encodeImageFileAsURL(this)" class="form-control" name="image">
                </div>
                <div class="form-group">
                    <label for="">Thông tin chi tiết</label>
                    <textarea name="detail" class="form-control" rows="9">{{$model->detail}}</textarea>
                </div>
            </div>
            <div class="col-12 d-flex justify-content-end">
                <button class="btn btn-primary" type="submit">Lưu</button>&nbsp;
                <a href="<?= BASE_URL ?>" class="btn btn-danger">Hủy</a>
            </div>
        </div>
    </form>

@if(isset($_GET['msg']))
    <input type="hidden" id="msg" value="{{$_GET['msg']}}">
@endif
@endsection
@section('script')
<script>
    function encodeImageFileAsURL(element) {
        var file = element.files[0];
        if(file === undefined){
            $('#preview-img').attr('src', "{{BASE_URL . $model->image}}");
        }else{
            var reader = new FileReader();
            reader.onloadend = function() {
                $('#preview-img').attr('src', reader.result);
                // console.log('RESULT', reader.result)
            }
            reader.readAsDataURL(file);
        }
    }
    $(document).ready(function(){

        /**
         * name: bắt buộc nhập, tối thiểu 4 ký tự
         * price: bắt buộc nhập, giá trị nhỏ nhất = 1
         * lượt xem: không bắt buộc nhập, nếu nhập thì phải là số, và không âm
         * đánh giá: không bắt buộc nhập, nếu nhập thì phải là số, và không âm
         * ảnh đại diện: bắt buộc, phải có đuôi là định dạng ảnh (jpg, png, jpeg, gif)
         */
        $('#edit-product-form').validate({
            // quy định bắt lỗi (nếu vi phạm thì hiển thị lỗi)
            rules:{
                name:{
                    required: true,
                    rangelength: [4, 100],
                    remote: {
                        url: "{{BASE_URL .'products/check-product-name'}}",
                        type: "post",
                        data: {
                            name: function()
                            {
                                return $('#edit-product-form :input[name="name"]').val();
                            },
                            id: function () {
                                return $('#edit-product-form :input[name="id"]').val();
                            }
                        }
                    }
                }
            },
            // Text của lỗi sẽ hiển thị ra ngoài
            messages: {
                name:{
                    required: "Hãy nhập tên sản phẩm",
                    rangelength: "tên sản phẩm nằm trong khoảng 4-10 ký tự",
                    remote: "Tên sản phẩm đã tồn tại"
                }
            }
        });
    });
</script>
@endsection