<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head><title>Danh sách phim</title></head>
            <body> 
                
            
                <h2>Rap chieu</h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Mã Rạp</th><th>Tên Rạp</th><th>Đại chỉ</th><th>sức chứa</th><th>Sdt</th>
                    </tr>
                    <xsl:for-each select="rapphim/rapchieu">
                        <tr>
                            <td><xsl:value-of select="MaRap"/></td>
                            <td><xsl:value-of select="TenRap"/></td>
                            <td><xsl:value-of select="DiaChi"/></td>
                            <td><xsl:value-of select="SucChua"/></td>
                            <td><xsl:value-of select="SoDienThoai"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                
                
                <h2>Phòng Chiếu</h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>MaPhong</th><th>Số Phòng</th><th>loai Phòng</th><th>sức chứa</th>
                    </tr>
                    <xsl:for-each select="rapphim/phongchieu">
                        <tr>
                            <td><xsl:value-of select="MaPhong"/></td>
                            <td><xsl:value-of select="SoPhong"/></td>
                            <td><xsl:value-of select="LoaiPhong"/></td>
                            <td><xsl:value-of select="SucChua"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
                
                
                <!-- chi hien thi phong chieu co suc chua > 100 -->
                <h2>Phòng Chiếu có sức chứa lon hon 100</h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>MaPhong</th><th>Số Phòng</th><th>loai Phòng</th><th>sức chứa</th>
                    </tr>
                    <xsl:for-each select="rapphim/phongchieu[SucChua &gt; 100]">
                        <tr>
                            <td><xsl:value-of select="MaPhong"/></td>
                            <td><xsl:value-of select="SoPhong"/></td>
                            <td><xsl:value-of select="LoaiPhong"/></td>
                            <td><xsl:value-of select="SucChua"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
                
    <!-- bang the loai -->
                <h2>The loai</h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>MaTheLoai</th><th>Ten the loai</th><th>MoTa</th>
                    </tr>
                    <xsl:for-each select="rapphim/theloai">
                        <tr>
                            <td><xsl:value-of select="MaTheLoai"/></td>
                            <td><xsl:value-of select="TenTheLoai"/></td>
                            <td><xsl:value-of select="MoTa"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2>Sơ Đồ Ghế </h2>
                <table border="1" cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Mã Ghế</th><th>Số ghế</th><th>Hang</th><th>Cot</th><th>LoaiGhe</th> <th>Trạng Thái</th> <th>ma phòng</th>
                    </tr>
                    <xsl:for-each select="rapphim/sodoghe">
                        <tr>
                            <td><xsl:value-of select="MaGhe"/></td>
                            <td><xsl:value-of select="SoGhe"/></td>
                            <td><xsl:value-of select="Hang"/></td>
                            <td><xsl:value-of select="Cot"/></td>
                            <td><xsl:value-of select="LoaiGhe"/></td>
                            <td><xsl:value-of select="TrangThai"/></td>
                            <td><xsl:value-of select="MaPhong"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                
                <h2>Khách Hàng </h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Mã Kh</th><th>Họ Tên</th><th>Email</th><th>Dịa Chỉ</th><th>Số Điện Thoại</th>
                    </tr>
                    <xsl:for-each select="rapphim/khachhang">
                        <tr>
                            <td><xsl:value-of select="MaKH"/></td>
                            <td><xsl:value-of select="HoTen"/></td>
                            <td><xsl:value-of select="Email"/></td>
                            <td><xsl:value-of select="DiaChi"/></td>
                            <td><xsl:value-of select="SoDienThoai"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                

                <h2>Danh sách phim </h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Mã phim</th><th>Tên phim</th><th>Thời lượng</th><th>Ngày khởi chiếu</th>
                    </tr>
                    <xsl:for-each select="rapphim/phim">
                        <tr>
                            <td><xsl:value-of select="MaPhim"/></td>
                            <td><xsl:value-of select="TenPhim"/></td>
                            <td><xsl:value-of select="ThoiLuong"/></td>
                            <td><xsl:value-of select="NgayKhoiChieu"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2> phim </h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                       <th>Tên phim</th>
                    </tr>
                    <xsl:for-each select="rapphim/phim">
                        <tr>
                       
                            <td><xsl:value-of select="TenPhim"/></td>
                          
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2> phim  co thời lượng hơn 100</h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Tên phim</th>
                    </tr>
                    <xsl:for-each select="rapphim/phim[ThoiLuong &gt; 100]">
                        <tr>
                            
                            <td><xsl:value-of select="TenPhim"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
                
                
                <h2>Lich Chiếu</h2>
                <table border="1" cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Mã lịch</th><th>Mã phim</th><th>Thời Gian Chiếu</th><th>Giá Vé</th> <th>Mã Phòng</th>
                    </tr>
                    <xsl:for-each select="rapphim/lichchieu">
                        <tr>
                            <td><xsl:value-of select="MaLich"/></td>
                            <td><xsl:value-of select="MaPhim"/></td>
                            <td><xsl:value-of select="ThoiGianChieu"/></td>
                            <td><xsl:value-of select="GiaVe"/></td>
                            <td><xsl:value-of select="MaPhong"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                
        
                
                <h2>Ve</h2>
                <table border="1" cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>Mã vé</th><th>MaLich</th><th>Mã Khách Hàng </th> <th>Ngày Mua</th><th>Số Ghế</th>
                    </tr>
                    <xsl:for-each select="rapphim/ve">
                        <tr>
                            <td><xsl:value-of select="MaVe"/></td>
                            <td><xsl:value-of select="MaLich"/></td>
                            <td><xsl:value-of select="MaKH"/></td>
                            <td><xsl:value-of select="NgayMua"/></td>
                            <td><xsl:value-of select="SoGhe"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2>The loai</h2>
                <table border="1"  cellpadding="5">
                    <tr bgcolor="#b0e0e6">
                        <th>MaTheLoai</th><th>Ten the loai</th><th>MoTa</th>
                    </tr>
                    <xsl:for-each select="rapphim/theloai[starts-with(TenTheLoai, 'Hành động')]">
                        <tr>
                            <td><xsl:value-of select="MaTheLoai"/></td>
                            <td><xsl:value-of select="TenTheLoai"/></td>
                            <td><xsl:value-of select="MoTa"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
