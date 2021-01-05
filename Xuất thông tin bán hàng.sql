﻿SELECT		CT.MADH AS 'Mã đơn hàng',
			DH.THOIGIAN AS 'Thời gian đặt hàng',
			NV.TENNV AS 'Nhân viên thanh toán',
			SP.TENSP AS 'Tên sản phẩm',
			CT.SLUONG AS 'Số lượng',
			FORMAT(TONGTIEN, 'C', 'VI-VN') AS 'Tổng tiền',
			FORMAT(DH.TTOAN, 'C', 'VI-VN') AS 'Thanh toán'				
FROM DBO.CHITIETDH CT
	INNER JOIN	DBO.SANPHAM SP 
		ON CT.MASP = SP.MASP
	INNER JOIN	DBO.DONHANG DH
		ON CT.MADH = DH.MADH
	INNER JOIN	NHANVIEN NV
		ON NV.MANV = DH.MANV