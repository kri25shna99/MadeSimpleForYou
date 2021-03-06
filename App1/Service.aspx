<%@ Page Title="" Language="C#" MasterPageFile="~/AppMaster.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="App1.Service" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding-top:80px;padding-bottom:100px;">
        <div class="row">
            <div class="col-lg-12">
                <h1 style="font-family:Calibri,'Californian FB'">Service</h1>
                <hr style="border:1px solid cornflowerblue" />
            <p style="font-size:16px;">
                Your time and convenience are important priorities. Our services will eliminate the hassle, and often the challenge, of scheduling and arranging for your blood draws. We have tailored our services to fit the need of the homebound senior, the busy executive, as well as the fragile pediatric patient.
            </p>
            <p style="font-size:16px;margin-bottom:20px;">
                myOnsite continues to grow nationally with over two hundred thousands satisfied patients. We provides Mobile Phlebotomy Services in major cities of USA which includes California, Massachusetts, Connecticut, New Hampshire, Arizona, Illinois, Michigan and many more.
            </p>
            <p style="font-size:18px;font-weight:bold;margin-bottom:20px;font-family:Calibri,'Californian FB'">
                Call us today and let’s discuss the need for mobile phlebotomy services.
            </p>
        </div>
        </div>
        <div class="col-lg-12">
            <div class="col-lg-8">
            <h4 style="font-weight:bold;">Your Name</h4>
                <form class="form-inline">
                <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-6"  style="margin-left:-15px;">
                        <div class="form-group">
                            <label for="email">First Name</label>
                            <asp:TextBox id="fstnm" placeholder="Enter First Name" name="firstname" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<input type="text" class="form-control" id="fstnm" placeholder="Enter First Name" name="firstname"/>--%>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group"  style="margin-right:-30px;">
                            <label for="pwd">Last Name</label>
                            <asp:TextBox id="lstnm" placeholder="Enter Last Name" name="lastname" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<input type="text" class="form-control" id="lstnm" placeholder="Enter Last Name" name="lastname"/>--%>
                        </div>
                    </div>
                 </div>
                 </div>
                 <div class="form-group">
                    <label for="email">Your Phone Number</label>
                    <%--<input type="text" class="form-control" id="phn" placeholder="Enter Your Phone Number" name="phonenumber"/>--%>
                     <asp:TextBox id="phn" placeholder="Enter Your Phone Number" name="phonenumber" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
                 <div class="form-group">
                    <label for="email">Email Address</label>
                    <%--<input type="text" class="form-control" id="eml" placeholder="Enter Email Address" name="email"/>--%>
                     <asp:TextBox id="eml" placeholder="Enter Email Address" name="email" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
                 <div class="form-group">
                    <label for="email">Tell us about your needs</label>
                    <asp:TextBox id="need" placeholder="Tell us about your needs" name="needs" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    <%--<textarea class="form-control" id="need" placeholder="Tell us about your needs" name="needs"></textarea>--%>
                 </div>

                 <%--<button type="submit" class="btn btn-default" style="margin-top:20px">Submit</button>--%>
                 <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-default" style="margin-top:20px" OnClick="btn_submit_Click"/>
                </form>
                
            </div>
            
            <div class="col-lg-4" style="font-family:Calibri,'Californian FB'">
                <h1>Contact information</h1>
                <h4 style="font-size:20px;font-weight:bold;margin-bottom:10px;font-family:Calibri,'Californian FB'"><i class="glyphicon glyphicon-earphone" style="font-size:14px;"></i> : +1 (813)-334-6040 | 1800-342-796</h4>
                <%--<h4 style="font-size:20px;font-weight:bold;margin-bottom:10px;font-family:Calibri,'Californian FB'">(877) 471-1327</h4>--%>
                <h4 style="font-size:20px;font-weight:bold;margin-bottom:10px;font-family:Calibri,'Californian FB'"><span class="glyphicon glyphicon-envelope" style="font-size:14px;"></span> : info@b2bappssolutions.com</h4>
            </div>
        </div>
        
     </div>

</asp:Content>
