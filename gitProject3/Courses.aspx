<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="gitProject3.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Courses Database</h2>
<p>
 <asp:Label ID="LblMsg" runat="server" Text="LblMsg"></asp:Label>
</p>
 
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CourseId"  ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CourseId" HeaderText="CourseId" ReadOnly="True" SortExpression="CourseId" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
            <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" SortExpression="CreditHours" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolmanagementConnectionString6 %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseId] = @original_CourseId AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CourseCode] = @original_CourseCode) OR ([CourseCode] IS NULL AND @original_CourseCode IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL))" InsertCommand="INSERT INTO [Courses] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (@CourseId, @CourseName, @CourseCode, @CreditHours)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseName] = @CourseName, [CourseCode] = @CourseCode, [CreditHours] = @CreditHours WHERE [CourseId] = @original_CourseId AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL)) AND (([CourseCode] = @original_CourseCode) OR ([CourseCode] IS NULL AND @original_CourseCode IS NULL)) AND (([CreditHours] = @original_CreditHours) OR ([CreditHours] IS NULL AND @original_CreditHours IS NULL))" ProviderName="<%$ ConnectionStrings:SchoolmanagementConnectionString6.ProviderName %>">
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
</asp:Content>
