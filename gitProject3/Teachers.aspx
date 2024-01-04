<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="gitProject3.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Teachers Database</h2>
<p>
    <asp:Label ID="LblMsg" runat="server" Text="LblMsg"></asp:Label>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolmanagementConnectionString9 %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseId] = @original_CourseId AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CourseCode] = @original_CourseCode) OR ([CourseCode] IS NULL AND @original_CourseCode IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL))" InsertCommand="INSERT INTO [Courses] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (@CourseId, @CourseName, @CourseCode, @CreditHours)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolmanagementConnectionString9.ProviderName %>" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseName] = @CourseName, [CourseCode] = @CourseCode, [CreditHours] = @CreditHours WHERE [CourseId] = @original_CourseId AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CourseCode] = @original_CourseCode) OR ([CourseCode] IS NULL AND @original_CourseCode IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CourseId" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_CourseCode" Type="String" />
            <asp:Parameter Name="original_CreditHours" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseId" Type="Int32" />
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="CourseCode" Type="String" />
            <asp:Parameter Name="CreditHours" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CourseName" Type="String" />
            <asp:Parameter Name="CourseCode" Type="String" />
            <asp:Parameter Name="CreditHours" Type="Int32" />
            <asp:Parameter Name="original_CourseId" Type="Int32" />
            <asp:Parameter Name="original_CourseName" Type="String" />
            <asp:Parameter Name="original_CourseCode" Type="String" />
            <asp:Parameter Name="original_CreditHours" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    </asp:Content>
