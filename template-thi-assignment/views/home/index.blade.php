<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Danh sách sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
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
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
@if(isset($_GET['msg']))
    <input type="hidden" id="msg" value="{{$_GET['msg']}}">
@endif
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
</body>
</html>