from lxml import etree

# Đọc file XML
tree = etree.parse("rapphim.xml")


#  Liệt kê tất cả tên rạp chiếu
rap_ten = tree.xpath("//rapchieu/TenRap/text()")
print(" Danh sách rạp chiếu:")
for ten in rap_ten:
    print("-", ten)

# Truy vấn tất cả tên phim
tenphim = tree.xpath("//phim/TenPhim/text()")
print("  \nDanh sách phim: ")
for t in tenphim:
    print("-", t)

#  Lấy các rạp có sức chứa > 250
rap_lon = tree.xpath("//rapchieu[SucChua>250]/TenRap/text()")
print("\n Rạp có sức chứa > 250:")
for ten in rap_lon:
    print("-", ten)


# Lấy các phim có thời lượng > 120 phút
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

