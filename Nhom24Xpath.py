from lxml import etree


tree = etree.parse("rapphim.xml")



rap_ten = tree.xpath("//rapchieu/TenRap/text()")
print(" Danh sách rạp chiếu:")
for ten in rap_ten:
    print("-", ten)


tenphim = tree.xpath("//phim/TenPhim/text()")
print("  \nDanh sách phim: ")
for t in tenphim:
    print("-", t)


rap_lon = tree.xpath("//rapchieu[SucChua>250]/TenRap/text()")
print("\n Rạp có sức chứa > 250:")
for ten in rap_lon:
    print("-", ten)



phim_dai = tree.xpath("//phim[ThoiLuong>120]/TenPhim/text()")
print("\n Phim có thời lượng > 120 phút:")
for ten in phim_dai:
    print("-", ten)



#  Lấy tên thể loại phim có mã = 4
the_loai = tree.xpath("//theloai[MaTheLoai='4']/TenTheLoai/text()")[0]
print(f"\n Thể loại có mã 4 là:", the_loai)


ghe_trong = tree.xpath("//sodoghe[TrangThai='false']/SoGhe/text()")
print("\n Số ghế trống:")
for ghe in ghe_trong:
    print("-", ghe)


# Lấy tên phim đag chiếu tại phòng 3
phim_phong3 = tree.xpath("//phim[MaPhim=//lichchieu[MaPhong='3']/MaPhim]/TenPhim/text()")
print("Phim chiếu tại phòng 3:", phim_phong3)

# Lấy lịch chiếu của phim có mã = 2
lich_chieu_ma2 = tree.xpath("//lichchieu[MaPhim='2']/ThoiGianChieu/text()")
print("\n Lịch chiếu của phim mã 2:", lich_chieu_ma2)

#phòng chieu có sức chứa > 100
phong_lon = tree.xpath("//phongchieu[SucChua>100]/MaPhong/text()")
print("\n Phòng chiếu có sức chứa > 100:", phong_lon)


# lay ten va diachi khach hang co ma = 5
ten_diachi_khachhang = tree.xpath("concat(//khachhang[MaKH='5']/HoTen, ' - ', //khachhang[MaKH='5']/DiaChi)")
print("\n Tên và địa chỉ khách hàng mã 5:", ten_diachi_khachhang)


lich_chieu_mann = tree.xpath("//lichchieu[starts-with(ThoiGianChieu,'2025')]/ThoiGianChieu/text()")
print("\nLịch chiếu của phim:", lich_chieu_mann)

lich_chieu_mamm = tree.xpath("lichchieu[MaPhong='3']/ThoiGianChieu/text()")
print("\n Lịch chiếu của phim mã 3:", lich_chieu_mamm)

suchua_rap = tree.xpath("//rapchieu[SucChua>100]/TenRap/text()")
print("\n Lịch chiếu của phim mã :", suchua_rap)


rapchieu = tree.xpath("//rapchieu[MaRap='1']/SoDienThoai/text()")[0]
print(f"\n rap chiu có mã 1  co sdt là:", rapchieu)

ho_nguyen = tree.xpath("//khachhang[starts-with(HoTen,'Nguyễn')]/HoTen/text()")
print("\nkhach hang có họ nguyễn :", ho_nguyen)


ten_phim = tree.xpath("//phim/TenPhim/text()")
print("\n ten phim :", ten_phim)


