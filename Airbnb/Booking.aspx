<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Booking.aspx.cs" Inherits="Airbnb.Booking" MasterPageFile="~/ZenMaster.Master" %>



<%-- SignUp --%>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolder1" runat="server">
    <form id="BookingForm">
        <section class="text-gray-600 body-font relative">
            <div class="container px-5 py-24 mx-auto">
                <div class="flex flex-col text-center w-full mb-12">
                    <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Booking</h1>
                </div>
                <div class="lg:w-1/2 md:w-2/3 mx-auto">
                    <div class="flex flex-wrap -m-2">
                        <div class="p-2 w-1/2" style="margin-left: 190px;">
                            <div class="relative">

                                <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
                                <asp:TextBox ID="email" runat="server" minlength="1" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" AutoCompleteType="FirstName" MaxLength="30" OnTextChanged="fname_TextChanged"></asp:TextBox>
                            </div>
                            <div id="Div2" runat="server"></div>
                            <div class="relative">
                                <label for="arrival" class="leading-7 text-sm text-gray-600">Check-in Date</label>
                                <asp:TextBox ID="arrival" runat="server" minlength="1" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" AutoCompleteType="FirstName" MaxLength="30" OnTextChanged="fname_TextChanged"></asp:TextBox>
                            </div>
                            <div id="retmsg7" runat="server"></div>

                            <div class="relative">
                                <label for="departure" class="leading-7 text-sm text-gray-600">Checkout Date</label>
                                <asp:TextBox ID="departure" runat="server" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" OnTextChanged="lname_TextChanged"></asp:TextBox>
                            </div>
                            <div id="retmsg6" runat="server"></div>
                            <div class="relative">
                                <label for="rooms" class="leading-7 text-sm text-gray-600">Number of rooms</label>
                                <asp:TextBox runat="server" type="room" ID="room" name="room" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" AutoCompleteType="Email" OnTextChanged="email_TextChanged"></asp:TextBox>
                            
                            <div id="retmsg5" runat="server"></div>
                            <div class="relative">
                            <label for="promo" class="leading-7 text-sm text-gray-600">Promo Code</label>
                            <asp:TextBox runat="server" type="room" ID="Promo" name="promo" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" AutoCompleteType="Email" OnTextChanged="promo_TextChanged"></asp:TextBox>
                            </div>
                            <div id="Div3" runat="server"></div>
                                                                       
                            <div class="relative">
                            <asp:DropDownList ID="DropDownList1" runat="server" >  
                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                            <asp:ListItem>Single Bed </asp:ListItem>  
                            <asp:ListItem>Double Bed</asp:ListItem>  
                            <asp:ListItem>Quad Bed</asp:ListItem>  
                            <asp:ListItem>Triple Bed</asp:ListItem>  
              
        </asp:DropDownList>  
        </div> 

             
                        <div class="p-2 w-full">
                            
                            <asp:Button ID="booking" Text="Confirm Booking" runat="server" OnClick="booking_Click" class="flex mx-auto text-white bg-green-150 border-0 py-2 px-8 focus:outline-none hover:bg-green-600 rounded text-lg" BorderStyle="None" />
                            <div id="returnMsg" runat="server">
                                 <div id="Div1" runat="server"></div>
                            </div>
                        </div>
                         <div class="p-2 w-full">
                            
                            

                        
                        <div class="p-2 w-full pt-8 mt-8 border-t border-gray-200 text-center">
                            <a class="text-green-150">airbnb@gmail.com</a>
                            <p class="leading-normal my-5">
                                Lahore, Punjab
              <br />
                                Pakistan.
                            </p>
                            <span class="inline-flex">
                                <a class="text-gray-150">
                                    <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                        <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                                    </svg>
                                </a>
                                <a class="ml-4 text-gray-150">
                                    <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                        <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                                    </svg>
                                </a>
                                <a class="ml-4 text-gray-150">
                                    <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                        <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                                        <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                                    </svg>
                                </a>
                                <a class="ml-4 text-gray-150">
                                    <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                        <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                                    </svg>
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</asp:Content>
