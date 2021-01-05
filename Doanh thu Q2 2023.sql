﻿SELECT FORMAT(SUM(DH.SLUONG * SP.GIATIEN), 'C', 'VI-VN') AS 'Tổng doanh thu Q2 năm 2023'
FROM DBO.CHITIETDH DH 
	INNER JOIN DBO.SANPHAM SP
		ON DH.MASP = SP.MASP
	INNER JOIN DBO.DONHANG D
		ON D.MADH = DH.MADH
WHERE YEAR(D.THOIGIAN) = 2023 AND MONTH(D.THOIGIAN) > 3 AND MONTH(D.THOIGIAN) < 7 