<%@ Page Title="" Language="C#" MasterPageFile="~/ZenMaster.Master" AutoEventWireup="true" CodeBehind="UserRating.aspx.cs" Inherits="Airbnb.UserRating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder1" runat="server">
    <section class="text-gray-600 body-font">
        <div class="container px-5 py-24 mx-auto flex flex-wrap items-center">
            <div class="lg:w-3/5 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
                <h1 class="title-font font-medium text-3xl text-blue-900">Thank You</h1>
                <p class="leading-relaxed mt-4" style="color: #10b981;">PLease come again</p>
            </div>
            <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
                <h2 class="text-gray-900 text-lg font-medium title-font mb-5">Rate Our Services</h2>

                <div class="relative">
                            <asp:DropDownList ID="DropDownList1" runat="server" >  
                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                            <asp:ListItem>Very Poor </asp:ListItem>  
                            <asp:ListItem>Poor</asp:ListItem>  
                            <asp:ListItem>Satisfactory</asp:ListItem>  
                            <asp:ListItem>Good</asp:ListItem>
                            <asp:ListItem>Very Good</asp:ListItem>
                            <asp:ListItem>Excellent</asp:ListItem>
              
                    </asp:DropDownList>  
                    </div>
   

                <asp:Button ID="User" Text="Continue" runat="server" class="text-white bg-green-150 border-0 py-2 px-8 focus:outline-none hover:bg-green-600 rounded text-lg" OnClick="user_Click" />
                <asp:Label ID="UserResponse" runat="server" Text="" ForeColor="Green" Font-Bold="true"></asp:Label>
                <div id="returnMsg" runat="server"></div>


                <asp:GridView ID="loginGrid" runat="server"></asp:GridView>
            </div>
        </div>
    </section>

</asp:Content>