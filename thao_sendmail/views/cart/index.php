<!-- <div class="container" style="margin-top: 3em;">
    <div style="display: flex; justify-content: center; align-items: center;">
        <p class="text-uppercase" style="font-size: 20pt; font-weight: bold;">Giỏ hàng</p>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Giá</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($data as $d) {
            ?>
                <tr>
                    <th scope="row"><?php echo $d['idProduct'] ?></th>
                    <td><?php echo $d['soluong'] ?></td>
                    <td><?php echo $d['nameProduct'] ?></td>
                    <td><?php echo $d['priceProduct'] ?></td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div> -->
<div class="container">
    <h1>Đăng ký lái thử xe</h1>
    <div class="alert alert-<?php echo isset($message) && $message != '' ? ($message == 'Đăng ký lái thử thành công' ? 'success' : 'danger') : ''; ?>">
        <?php echo isset($message) && $message != '' ? $message : ''; ?>
    </div>

    <form action="index.php?controller=testDriver&action=testDrive" method="post" style="flex-wrap: wrap; flex-direction: row; display: flex;">
        <div class="form-group flex" style="width: 50%;">
            <label for="name">Tên</label>
            <input type="text" name="name" class="form-control" id="name" required>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="email">Email</label>
            <input type="email" name="email" class="form-control" id="email" required>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="phone">Số điện thoại</label>
            <input type="tel" name="phone" class="form-control" id="phone" required>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="car_type">Loại xe muốn lái thử</label>
            <input type="text" name="car_type" class="form-control" id="car_type" value="<?php echo isset($product[0]['nameProduct']) ? $product[0]['nameProduct'] : ''; ?>" readonly>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="time">Thời gian lái thử</label>
            <input type="time" name="time" class="form-control" id="time" required>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="location">Địa điểm lái thử</label>
            <input type="text" name="location" class="form-control" id="location" required>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="dob">Ngày sinh</label>
            <input type="date" name="dob" class="form-control" id="dob" required>
        </div>
        <div class="form-group flex" style="width: 50%;">
            <label for="gender">Giới tính</label>
            <select name="gender" class="form-control" id="gender" required>
                <option value="">Chọn giới tính</option>
                <option value="Nam">Nam</option>
                <option value="Nữ">Nữ</option>
            </select>
        </div>
        <button type="submit" name="btnTestDrive" class="btn btn-primary">Gửi</button>
    </form>
</div>