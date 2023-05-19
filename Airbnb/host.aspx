<%@ Page Title="" Language="C#" MasterPageFile="~/ZenMaster.Master" AutoEventWireup="true" CodeBehind="host.aspx.cs" Inherits="Airbnb.host" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<%-- SignUp --%>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder1" runat="server">
    <form id="SignUpForm">
        <section class="text-gray-600 body-font relative">
            <div class="container px-5 py-24 mx-auto">
                <div class="flex flex-col text-center w-full mb-12">
                    <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900"> Host Sign Up</h1>
                </div>
                </div>
                <div class="lg:w-1/2 md:w-2/3 mx-auto">
                    <div class="flex flex-wrap -m-2">
                        <div class="p-2 w-1/2" style="margin-left: 190px;">
                            <div class="relative">
                                <label for="fname" class="leading-7 text-sm text-gray-600">Full Name</label>
                                <asp:TextBox ID="fname" runat="server" minlength="1" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" AutoCompleteType="FirstName" MaxLength="30" OnTextChanged="fname_TextChanged"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"
                                    ControlToValidate="fname" ErrorMessage="First Name must not be empty"
                                    ValidationExpression="[A-Z a-z ]{2,30}"></asp:RegularExpressionValidator>
                            </div>
                            <div id="retmsg7" runat="server"></div>
                            <div class="relative">
                                <label for="lname" class="leading-7 text-sm text-gray-600">User Name</label>
                                <asp:TextBox ID="lname" runat="server" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" OnTextChanged="lname_TextChanged"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="fname" ErrorMessage="User Name must not be empty"
                                ValidationExpression="[A-Z a-z 0-9]{2,30}"></asp:RegularExpressionValidator>
                            </div>
                            <div id="retmsg6" runat="server"></div>
                            <div class="relative">
                                <label for="email" class="leading-7 text-sm text-gray-600">E-Mail</label>
                                <asp:TextBox runat="server" type="email" ID="email" name="email" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" AutoCompleteType="Email" OnTextChanged="email_TextChanged"></asp:TextBox>
                            </div>
                            <div id="retmsg5" runat="server"></div>
                            <div class="relative">
                                <label for="password" class="leading-7 text-sm text-gray-600">Password</label>
                                <asp:TextBox runat="server" type="password" ID="password" name="password" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" TextMode="Password" OnTextChanged="password_TextChanged"></asp:TextBox>
                            </div>
                            <div id="retmsg4" runat="server"></div>
                            <div class="relative">
                                <label for="phone" class="leading-7 text-sm text-gray-600">Phone</label>
                                <asp:TextBox runat="server" ID="phone" name="phone" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" TextMode="Phone" OnTextChanged="phone_TextChanged"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ControlToValidate="phone" ErrorMessage="Enter an 11 digit number"
                                    ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
                            </div>
                            <div id="retmsg3" runat="server"></div>
                            <div class="relative">
                                <label for="BAdd" class="leading-7 text-sm text-gray-600">Home Address</label>
                                <asp:TextBox runat="server" type="text" ID="BAdd" name="BAdd" class="w-full bg-gray-100 bg-opacity-15 rounded border border-gray-300 focus:border-green-150 focus:bg-white focus:ring-2 focus:ring-green-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" OnTextChanged="BAdd_TextChanged"></asp:TextBox>
                            </div>
                            <div id="retmsg2" runat="server"></div>
                            <div id="retmsg1" runat="server"></div>
                        </div>
                        <div class="p-2 w-full">
                            <asp:Button ID="signup" Text="Create Account" runat="server" OnClick="host_Click" class="flex mx-auto text-white bg-green-150 border-0 py-2 px-8 focus:outline-none hover:bg-green-600 rounded text-lg" BorderStyle="None" />
                            <div id="returnMsg" runat="server"></div>
                        </div>
                        <%--<div class="p-2 w-full">
                            <asp:Button ID="Button1" Text="Are You A Host" runat="server" OnClick="host_Click" class="flex mx-auto text-white bg-green-150 border-0 py-2 px-8 focus:outline-none hover:bg-green-600 rounded text-lg" BorderStyle="None" />
                            <div id="Div1" runat="server"></div>
                        </div>--%>
          
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
