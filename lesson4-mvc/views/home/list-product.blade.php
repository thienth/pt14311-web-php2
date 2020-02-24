@extends('layouts.admin')
@section('title', "FPT Polytechnic - Homepage")
@section('content')
    <table class="table table-stripped">
        <thead>
        <th>ID</th>
        <th>Name</th>
        <th width="100">Image</th>
        <th>Category</th>
        <th>Price</th>
        <th>
            <a href="{{BASE_URL . 'products/add-product'}}" class="btn btn-sm btn-success">Thêm</a>
        </th>
        </thead>
        <tbody>
        @foreach($products as $pro)
            <tr>
                <td>{{$pro->id}}</td>
                <td>{{$pro->name}}</td>
                <td>
                    <img src="{{BASE_URL . $pro->image}}" class="img-thumbnail">
                </td>
                <td>
                    @php
                        $parent = $pro->getCategory();
                    @endphp
                    @if($parent !== false)
                        <?= $parent->cate_name; ?>
                    @endif
                </td>
                <td>{{$pro->price}}</td>
                <td>
                    <a href="{{BASE_URL . "products/edit-product/$pro->id"}}" class="btn btn-primary btn-sm ">Sửa</a>&nbsp;
                    <a href="{{BASE_URL . "products/remove-product/$pro->id"}}" class="btn btn-danger btn-sm btn-remove">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection

@section('script')
    <script>
        $(document).ready(function(){
            if($('#msg').length > 0){

                Swal.fire({
                    position: 'bottom-end',
                    icon: 'info',
                    title: $('#msg').val(),
                    showConfirmButton: false,
                    timer: 1500
                })
            }

            $('.btn-remove').click(function(){
                var redirectUrl = $(this).attr('href');
                Swal.fire({
                    title: 'Thông báo!',
                    text: "Bạn có chắc chắn muốn xóa sản phẩm này ?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Đồng ý!'
                }).then((result) => {
                    if (result.value) {
                        window.location.href = redirectUrl;
                    }
                })
                return false;
            });
        });
    </script>
@endsection