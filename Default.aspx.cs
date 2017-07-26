using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        //TODO use 2 decimal places

        int pioneerCount = 0;
        int driverCount = 0;
        int integratorCount = 0;
        int guardianCount = 0;

        foreach(ListItem item in traits.Items)
        {
            if (item.Selected)
            {
                switch (item.Value)
                {
                    case "outgoing":
                    case "big_picture":
                    case "spontaneous":
                    case "drawn_to_risk":
                    case "adaptable":
                    case "imaginative":
                        {
                            pioneerCount++;
                            break;
                        }
                    case "diplomatic":
                    case "empathetic":
                    case "traditional":
                    case "relationship_oriented":
                    case "intrinsically_motivated":
                    case "nonconfrontational":
                        {
                            integratorCount++;
                            break;
                        }
                    case "quantitative":
                    case "logical":
                    case "focused":
                    case "competitive":
                    case "experimental":
                    case "deeply_curious":
                        {
                            driverCount++;
                            break;
                        }
                    case "methodical":
                    case "reserved":
                    case "detail_oriented":
                    case "practical":
                    case "structured":
                    case "loyal":
                        {
                            guardianCount++;
                            break;
                        }
                }
            }
        }

///        Hashtable map = new Hashtable();
        Dictionary<String, int> map = new Dictionary<string, int>();
        map.Add("pioneer", pioneerCount);
        map.Add("driver", driverCount);
        map.Add("integrator", integratorCount);
        map.Add("guardian", guardianCount);

        var sortedList = map.ToList();
        sortedList.Sort((pair1, pair2) => pair1.Value.CompareTo(pair2.Value));
    
        lblResult.Text = "You are a " + sortedList[3].Key + "/" + sortedList[2].Key;

        pioneerHeader.Attributes.Add("class", "w3-container w3-blue");
        iHeader.Attributes.Add("class", "w3-container w3-blue");
        gHeader.Attributes.Add("class", "w3-container w3-blue");
        dHeader.Attributes.Add("class", "w3-container w3-blue");

        switch (sortedList[3].Key)
        {
            case "pioneer":
                pioneerHeader.Attributes.Add("class", "w3-container w3-red");
                break;
            case "integrator":
                iHeader.Attributes.Add("class", "w3-container w3-red");
                break;
            case "guardian":
                gHeader.Attributes.Add("class", "w3-container w3-red");
                break;
            case "driver":
                dHeader.Attributes.Add("class", "w3-container w3-red");
                break;
        }

        switch (sortedList[2].Key)
        {
            case "pioneer":
                pioneerHeader.Attributes.Add("class", "w3-container w3-red");
                break;
            case "integrator":
                iHeader.Attributes.Add("class", "w3-container w3-red");
                break;
            case "guardian":
                gHeader.Attributes.Add("class", "w3-container w3-red");
                break;
            case "driver":
                dHeader.Attributes.Add("class", "w3-container w3-red");
                break;
        }

        float pioneerPercentage = ((float)pioneerCount / 6F) * 100;
        pioneerScore.InnerHtml = "Pioneer: " + Math.Round(pioneerPercentage, 2).ToString() + "%";

        float driverPercentage = ((float)driverCount / 6F) * 100;
        driverScore.InnerHtml = "Driver: " + Math.Round(driverPercentage, 2).ToString() + "%";

        float guardianPercentage = ((float)guardianCount / 6F) * 100;
        guardianScore.InnerHtml = "Guardian: " + Math.Round(guardianPercentage, 2).ToString() + "%";

        float integratorPercentage = ((float)integratorCount / 6F) * 100;
        integratorScore.InnerHtml = "Integrator: " + Math.Round(integratorPercentage, 2).ToString() + "%";

        /**
         * Pioneer:
         * outgoing
         * focused on the big picture
         * spontanious
         * drawn to risk
         * adaptable
         * imaginative
         * 
         * integrator:
         * diplomatic
         * empathetic
         * traditional
         * relationship oriented
         * intrinsically motivated
         * nonconfrontational
         * 
         * driver:
         * quantitative
         * logical
         * focused
         * competitive
         * experimentatl
         * depply curious
         * 
         * guardian:
         * metholodical
         * reserved
         * detail oriented
         * practical
         * structured
         * loyal
         */
    }
}