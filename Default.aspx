<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HBR Personality Trait Discovery</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <div class="w3-container w3-blue">
        <h1>HBR Personality Traits</h1>
    </div>
    <div class="w3-container w3-light-grey">
        <p>
            This is based on a great <a href="https://hbr.org/2017/03/pioneers-drivers-integrators-and-guardians" target="_blank">HBR article</a> about
            team chemistry and personality profiles.  Select the personality traits from the list below that you most identify with and hit Submit, then see
            what traits describe you the best.  Have fun!
        </p>
    </div>
    <div class="w3-container">
        <h2><asp:Label ID="lblResult" runat="server" Text=""></asp:Label></h2>
    </div>
    <div class="w3-container">

        <form id="form1" runat="server">
            <div>
                <asp:CheckBoxList ID="traits" runat="server" RepeatColumns="4" CssClass="w3-table w3-striped">
                    <asp:ListItem Text="Traditional" Value="traditional"></asp:ListItem>
                    <asp:ListItem Text="Diplomatic" Value="diplomatic"></asp:ListItem>
                    <asp:ListItem Text="Experimental" Value="experimental"></asp:ListItem>
                    <asp:ListItem Text="Loyal" Value="loyal"></asp:ListItem>
                    <asp:ListItem Text="Nonconfrontational" Value="nonconfrontational"></asp:ListItem>
                    <asp:ListItem Text="Focused" Value="focused"></asp:ListItem>
                    <asp:ListItem Text="Imaginative" Value="imaginative"></asp:ListItem>
                    <asp:ListItem Text="Adaptive" Value="adaptable"></asp:ListItem>
                    <asp:ListItem Text="Structured" Value="structured"></asp:ListItem>
                    <asp:ListItem Text="Outgoing" Value="outgoing"></asp:ListItem>
                    <asp:ListItem Text="Reserved" Value="reserved"></asp:ListItem>
                    <asp:ListItem Text="Quantitative" Value="quantitative"></asp:ListItem>
                    <asp:ListItem Text="Logical" Value="logical"></asp:ListItem>
                    <asp:ListItem Text="Intrinsically motivated" Value="intrinsically_motivated"></asp:ListItem>
                    <asp:ListItem Text="Relationship Oriented" Value="relationship_oriented"></asp:ListItem>
                    <asp:ListItem Text="Deeply Curious" Value="deeply_curious"></asp:ListItem>
                    <asp:ListItem Text="Spontaneous" Value="spontaneous"></asp:ListItem>
                    <asp:ListItem Text="Drawn to Risk" Value="drawn_to_risk"></asp:ListItem>
                    <asp:ListItem Text="Competitive" Value="competitive"></asp:ListItem>
                    <asp:ListItem Text="Detail oriented" Value="detail_oriented"></asp:ListItem>
                    <asp:ListItem Text="Empathetic" Value="empathetic"></asp:ListItem>
                    <asp:ListItem Text="Focused on the big picture" Value="big_picture"></asp:ListItem>
                    <asp:ListItem Text="Practical" Value="practical"></asp:ListItem>
                    <asp:ListItem Text="Methodical" Value="methodical"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="w3-button w3-round-large w3-large w3-indigo w3-margin" />
            </div>
        </form>
    </div>

    <div class="w3-container w3-padding-8">

        <div id="Pioneer" class="w3-cell w3-card w3-half w3-margin" >
            <header id="pioneerHeader" runat="server" class="w3-container w3-blue">
                <h3 id="pioneerScore" runat="server">Pioneer</h3>
            </header>
            <div class="w3-row">
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Energized By:</h5></li>
                        <li>Brainstorming</li>
                        <li>Spontanaity and trying new things</li>
                        <li>Enthusiasm</li>
                    </ul>
                </div>
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Alienated By:</h5></li>
                        <li>Rules and structure</li>
                        <li>The word "no"</li>
                        <li>A focus on process</li>
                    </ul>
                </div>
            </div>
        </div>

        <div id="Integrator" class="w3-cell w3-card w3-half w3-margin">
            <header id="iHeader" runat="server" class="w3-container w3-blue">
                <h3 id="integratorScore" runat="server">Integrator</h3>
            </header>
            <div class="w3-row">
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Energized By:</h5></li>
                        <li>Collaboration</li>
                        <li>Communication</li>
                        <li>Trust and respect</li>
                    </ul>
                </div>
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Alienated By:</h5></li>
                        <li>Politics</li>
                        <li>Conflict</li>
                        <li>Inflexibility</li>
                    </ul>
                </div>
            </div>
        </div>


        <div id="Driver" class="w3-cell w3-card w3-half w3-margin">
            <header id="dHeader" runat="server" class="w3-container w3-blue">
                <h3 id="driverScore" runat="server">Driver</h3>
            </header>
            <div class="w3-row">
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Energized By:</h5></li>
                        <li>Solving problems</li>
                        <li>Directness</li>
                        <li>Winning</li>
                    </ul>
                </div>
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Alienated By:</h5></li>
                        <li>Indecision</li>
                        <li>Inefficiency</li>
                        <li>Lack of focus</li>
                    </ul>
                </div>
            </div>
        </div>

        <div id="Guardian" class="w3-cell w3-card w3-half w3-margin">
            <header id="gHeader" runat="server" class="w3-container w3-blue">
                <h3 id="guardianScore" runat="server">Guardian</h3>
            </header>
            <div class="w3-row">
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Energized By:</h5></li>
                        <li>Organization</li>
                        <li>Predictability and consistency</li>
                        <li>A detailed plan</li>
                    </ul>
                </div>
                <div class="w3-half">
                    <ul class="w3-ul">
                        <li><h5>Alienated By:</h5></li>
                        <li>Disorder</li>
                        <li>Time pressure</li>
                        <li>Ambiguity and uncertainty</li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
        <div class="w3-container w3-blue">
        <h5>Questions?: <a href="mailto:chrdavi@microsoft.com">email me</a> or find me on twitter <a href="https://twitter.com/techchrisdavis">@techchrisdavis</a></h5>
    </div>

</body>
</html>
