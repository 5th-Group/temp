UPDATE CHITIETDH
SET TONGTIEN = DH.SLUONG * SP.GIATIEN
FROM DBO.CHITIETDH DH INNER JOIN DBO.SANPHAM SP
ON DH.MASP = SP.MASP
WHERE TONGTIEN IS NULL