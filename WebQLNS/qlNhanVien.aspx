<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="WebQLNS.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">DANH SÁCH NHÂN VIÊN</h2>
    <hr />

    <asp:SqlDataSource ID="dsNhanVien" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
        InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien]" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
            <asp:Parameter Name="MaNV" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:GidView ID="gvNhanVien" runat="server" AutoGenerateColumns="false"
        CssClass="table table-bordered table-hover" DataSourceID="dsNhanVien" DataKeyNames="MaSV">
    </asp:GidView>
</asp:Content>
