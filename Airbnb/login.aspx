<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/login.aspx.cs" Inherits="Airbnb.login" MasterPageFile="~/ZenMaster.Master" %>


<%-- Login Body --%>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder1" runat="server">
    <section class="text-gray-600 body-font">
        <div class="container px-5 py-24 mx-auto flex flex-wrap items-center">
            <div class="lg:w-3/5 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
                <h1 class="title-font font-medium text-3xl text-blue-900">Welcome</h1>
                <p class="leading-relaxed mt-4" style="color: #10b981;">Our guests mean the wold to us</p>
            </div>
            <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
                <h2 class="text-gray-900 text-lg font-medium title-font mb-5">AirBNB</h2>
                <div class="relative mb-4">
                    <label for="email" class="leading-7 text-sm text-gray-600">Enter Email</label>
                    <%--        <input type="email" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-green-150 focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"/>--%>
                    <asp:TextBox ID="email" runat="server" class="w-full bg-white rounded border border-gray-300 focus:border-green-150 focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"></asp:TextBox>
                </div>
                <div class="relative mb-4">
                    <label for="password" class="leading-7 text-sm text-gray-600">Enter Password</label>
                    <%--        <input type="password" id="password" name="password" class="w-full bg-white rounded border border-gray-300 focus:border-green-150 focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"/>--%>
                    <asp:TextBox type="password" runat="server" ID="password" name="password" class="w-full bg-white rounded border border-gray-300 focus:border-green-150 focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"></asp:TextBox>
                </div>

                <asp:Button ID="Login" Text="Log In" runat="server" class="text-white bg-green-150 border-0 py-2 px-8 focus:outline-none hover:bg-green-600 rounded text-lg" OnClick="Login_Click" />
                <asp:Label ID="LoginResponse" runat="server" Text="" ForeColor="Green" Font-Bold="true"></asp:Label>
                <div id="returnMsg" runat="server"></div>


                <asp:GridView ID="loginGrid" runat="server"></asp:GridView>
            </div>
        </div>
    </section>

</asp:Content>

<%--</html>--%>