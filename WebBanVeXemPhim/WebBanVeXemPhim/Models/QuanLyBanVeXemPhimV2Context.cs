using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebBanVeXemPhim.Models;

public partial class QuanLyBanVeXemPhimV2Context : DbContext
{
    public QuanLyBanVeXemPhimV2Context()
    {
    }

    public QuanLyBanVeXemPhimV2Context(DbContextOptions<QuanLyBanVeXemPhimV2Context> options)
        : base(options)
    {
    }

    public virtual DbSet<Banner> Banners { get; set; }

    public virtual DbSet<Combo> Comboes { get; set; }

    public virtual DbSet<Ghe> Ghes { get; set; }

    public virtual DbSet<KhuyenMai> KhuyenMais { get; set; }

    public virtual DbSet<LichChieu> LichChieus { get; set; }

    public virtual DbSet<NguoiDung> NguoiDungs { get; set; }

    public virtual DbSet<Phim> Phims { get; set; }

    public virtual DbSet<Phong> Phongs { get; set; }

    public virtual DbSet<TaiKhoanAdmin> TaiKhoanAdmins { get; set; }

    public virtual DbSet<ThanhToan> ThanhToans { get; set; }

    public virtual DbSet<ThongBao> ThongBaos { get; set; }

    public virtual DbSet<Trailer> Trailers { get; set; }

    public virtual DbSet<Ve> Ves { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DESKTOP-GHP029P\\SQLEXPRESS;Database=QuanLyBanVeXemPhim_v2;Trusted_Connection=True;MultipleActiveResultSets=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Banner>(entity =>
        {
            entity.HasKey(e => e.MaBanner).HasName("PK__Banner__508B4A4980FF77CB");

            entity.ToTable("Banner");

            entity.Property(e => e.MoTa)
                .HasMaxLength(50)
                .IsFixedLength();
        });

        modelBuilder.Entity<Combo>(entity =>
        {
            entity.HasKey(e => e.MaCombo).HasName("PK__Comboes__C3EDBC787FCD0063");

            entity.Property(e => e.Anh).HasMaxLength(50);
            entity.Property(e => e.Gia).HasColumnType("decimal(10, 2)");
            entity.Property(e => e.TenCombo).HasMaxLength(50);
        });

        modelBuilder.Entity<Ghe>(entity =>
        {
            entity.HasKey(e => e.MaGhe).HasName("PK__Ghe__3CD3C67B96BF054D");

            entity.ToTable("Ghe");

            entity.Property(e => e.LoaiGhe).HasMaxLength(50);
            entity.Property(e => e.SoGhe).HasMaxLength(10);
            entity.Property(e => e.TrangThai).HasDefaultValue(false);

            entity.HasOne(d => d.MaPhongNavigation).WithMany(p => p.Ghes)
                .HasForeignKey(d => d.MaPhong)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Ghe__MaPhong__59FA5E80");
        });

        modelBuilder.Entity<KhuyenMai>(entity =>
        {
            entity.HasKey(e => e.MaKhuyenMai).HasName("PK__KhuyenMa__6F56B3BD96750027");

            entity.ToTable("KhuyenMai");
        });

        modelBuilder.Entity<LichChieu>(entity =>
        {
            entity.HasKey(e => e.MaLichChieu).HasName("PK__LichChie__DC740197A1F62EBB");

            entity.ToTable("LichChieu");

            entity.Property(e => e.GiaVe).HasColumnType("decimal(10, 2)");

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaPhim)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__LichChieu__MaPhi__5BE2A6F2");

            entity.HasOne(d => d.MaPhongNavigation).WithMany(p => p.LichChieus)
                .HasForeignKey(d => d.MaPhong)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__LichChieu__MaPho__5CD6CB2B");
        });

        modelBuilder.Entity<NguoiDung>(entity =>
        {
            entity.HasKey(e => e.MaNguoiDung).HasName("PK__NguoiDun__C539D762D018C6C4");

            entity.ToTable("NguoiDung");

            entity.HasIndex(e => e.Email, "UQ__NguoiDun__A9D105343D2EDB64").IsUnique();

            entity.Property(e => e.Email).HasMaxLength(255);
            entity.Property(e => e.MatKhau).HasMaxLength(255);
            entity.Property(e => e.TenNguoiDung).HasMaxLength(100);
            entity.Property(e => e.Token)
                .HasMaxLength(50)
                .IsFixedLength();
            entity.Property(e => e.TrangThai).HasDefaultValue(true);
        });

        modelBuilder.Entity<Phim>(entity =>
        {
            entity.HasKey(e => e.MaPhim).HasName("PK__Phim__4AC03DE3A13ABD88");

            entity.ToTable("Phim");

            entity.Property(e => e.DaoDien)
                .HasMaxLength(50)
                .IsFixedLength();
            entity.Property(e => e.DoTuoi)
                .HasMaxLength(10)
                .IsFixedLength();
            entity.Property(e => e.NgonNgu)
                .HasMaxLength(20)
                .IsFixedLength();
            entity.Property(e => e.Poster).HasMaxLength(255);
            entity.Property(e => e.TenPhim).HasMaxLength(255);
            entity.Property(e => e.TheLoai).HasMaxLength(100);
        });

        modelBuilder.Entity<Phong>(entity =>
        {
            entity.HasKey(e => e.MaPhong).HasName("PK__Phong__20BD5E5B6D9A69B8");

            entity.ToTable("Phong");

            entity.Property(e => e.TenPhong).HasMaxLength(100);
        });

        modelBuilder.Entity<TaiKhoanAdmin>(entity =>
        {
            entity.HasKey(e => e.MaAdmin).HasName("PK__TaiKhoan__49341E38D967A0AC");

            entity.ToTable("TaiKhoanAdmin");

            entity.HasIndex(e => e.TenDangNhap, "UQ__TaiKhoan__55F68FC085CEE838").IsUnique();

            entity.HasIndex(e => e.Email, "UQ__TaiKhoan__A9D105348E498F4E").IsUnique();

            entity.Property(e => e.ChucVu).HasMaxLength(50);
            entity.Property(e => e.Email).HasMaxLength(255);
            entity.Property(e => e.HoTen).HasMaxLength(100);
            entity.Property(e => e.MatKhau).HasMaxLength(255);
            entity.Property(e => e.NgayTao)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.SoDienThoai).HasMaxLength(15);
            entity.Property(e => e.TenDangNhap).HasMaxLength(100);
            entity.Property(e => e.TrangThai).HasDefaultValue(true);
        });

        modelBuilder.Entity<ThanhToan>(entity =>
        {
            entity.HasKey(e => e.MaThanhToan).HasName("PK__ThanhToa__D4B258448E06BD78");

            entity.ToTable("ThanhToan");

            entity.Property(e => e.NgayThanhToan)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.PhuongThuc).HasMaxLength(50);
            entity.Property(e => e.TrangThai).HasMaxLength(50);

            entity.HasOne(d => d.MaComBoNavigation).WithMany(p => p.ThanhToans)
                .HasForeignKey(d => d.MaComBo)
                .HasConstraintName("FK_ThanhToan_Comboes");

            entity.HasOne(d => d.MaVeNavigation).WithMany(p => p.ThanhToans)
                .HasForeignKey(d => d.MaVe)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ThanhToan__MaVe__5DCAEF64");
        });

        modelBuilder.Entity<ThongBao>(entity =>
        {
            entity.HasKey(e => e.MaThongBao).HasName("PK__ThongBao__04DEB54ECF986D27");

            entity.ToTable("ThongBao");

            entity.Property(e => e.NgayGui)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");

            entity.HasOne(d => d.MaNguoiDungNavigation).WithMany(p => p.ThongBaos)
                .HasForeignKey(d => d.MaNguoiDung)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ThongBao__MaNguo__5FB337D6");
        });

        modelBuilder.Entity<Trailer>(entity =>
        {
            entity.HasKey(e => e.MaTrailer).HasName("PK__Trailer__E9101465E8B686BF");

            entity.ToTable("Trailer");

            entity.Property(e => e.DuongDanTrailer).HasMaxLength(255);
            entity.Property(e => e.MoTaTrailer).HasMaxLength(1000);

            entity.HasOne(d => d.MaPhimNavigation).WithMany(p => p.Trailers)
                .HasForeignKey(d => d.MaPhim)
                .HasConstraintName("FK__Trailer__MaPhim__60A75C0F");
        });

        modelBuilder.Entity<Ve>(entity =>
        {
            entity.HasKey(e => e.MaVe).HasName("PK__Ve__2725100FB3FE1D21");

            entity.ToTable("Ve");

            entity.Property(e => e.GiaVe).HasColumnType("decimal(10, 2)");
            entity.Property(e => e.NgayDat)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");

            entity.HasOne(d => d.MaGheNavigation).WithMany(p => p.Ves)
                .HasForeignKey(d => d.MaGhe)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Ve__MaGhe__619B8048");

            entity.HasOne(d => d.MaKhachHangNavigation).WithMany(p => p.Ves)
                .HasForeignKey(d => d.MaKhachHang)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Ve__MaKhachHang__628FA481");

            entity.HasOne(d => d.MaLichChieuNavigation).WithMany(p => p.Ves)
                .HasForeignKey(d => d.MaLichChieu)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Ve__MaLichChieu__6383C8BA");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
