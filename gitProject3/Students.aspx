<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="gitProject3.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h2>Students Database</h2>
<p>
 <asp:Label ID="LblMsg" runat="server" Text="LblMsg"></asp:Label>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolmanagementConnectionString8 %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @original_StudentId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL))" InsertCommand="INSERT INTO [Students] ([StudentId], [FirstName], [LastName], [DateOfBirth], [Gender]) VALUES (@StudentId, @FirstName, @LastName, @DateOfBirth, @Gender)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolmanagementConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Gender] = @Gender WHERE [StudentId] = @original_StudentId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_StudentId" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
            <asp:Parameter Name="original_Gender" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudentId" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="Gender" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="original_StudentId" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
            <asp:Parameter Name="original_Gender" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
