<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="Email">
	<HTML>
		<head>
			<style>
				TD { FONT-SIZE: 9pt; FONT-FAMILY: verdana, tahoma, arial, helvetica, sans-serif; }
				BODY { FONT-SIZE: 9pt; FONT-FAMILY: verdana, tahoma, arial, helvetica, sans-serif; }
				Span.Small { FONT-SIZE: 8pt; FONT-FAMILY: verdana, tahoma, arial, helvetica, sans-serif; }
				TR.Header { FONT-SIZE: 8pt; FONT-WEIGHT: bold; FONT-FAMILY: verdana, tahoma, arial, helvetica, sans-serif; }
			</style>
		</head>
		<body>
			<P>Dear <xsl:value-of select="CustomerName" />,</P>
			<P>


        <xsl:choose>
          <xsl:when test="eTicket='True' or FlashSeats='True'" >
            Thank you for your purchase. Your confirmation number is <strong>
              <xsl:value-of select="ConfirmationNumber" />
            </strong>. Please keep
            this number for future reference.
            <BR/>
            <BR/>
            <xsl:if test="eTicket='True'">
              <xsl:choose>
                <xsl:when test="RedirectToPortal='False'">
                  <FONT style="FONT-SIZE: 10pt;">
                    <strong>
                      <xsl:choose>
                        <xsl:when test="ScheduleEticket='False'">
                          Your e-tickets will arrive shortly via e-mail.
                        </xsl:when>
                        <xsl:otherwise>
                          Your e-tickets will arrive via e-mail on <xsl:value-of select="EticketScheduleDate" />.
                        </xsl:otherwise>
                      </xsl:choose>
                    </strong>
                  </FONT>
                </xsl:when>
                <xsl:otherwise>
                  <table>
                    <tr>
                      <td>
                        <xsl:choose>
                          <xsl:when test="ScheduleEticket='False'">
                            <strong>An email with instructions on how to retreive the etickets will be sent shortly.</strong>
                          </xsl:when>
                          <xsl:otherwise>
                            <strong>
                              An email with instructions on how to retreive the etickets will arrive via email on <xsl:value-of select="EticketScheduleDate" />.
                            </strong>
                          </xsl:otherwise>
                        </xsl:choose>
                      </td>
                    </tr>
                  </table>
                </xsl:otherwise>
              </xsl:choose>
              <BR/>
              <BR/>
              <xsl:choose>
                <xsl:when test="ScheduleEticket='False'">
                  If you do not receive your e-tickets within 24 hours or if
                  you need the assistance of Customer Care please contact us by phone:
                  <xsl:value-of select="CustomerAssistancePhoneNo" />.
                </xsl:when>
                <xsl:otherwise>
                  If you do not receive your e-tickets on <xsl:value-of select="EticketScheduleDate" /> or if
                  you need the assistance of Customer Care please contact us by phone:
                  <xsl:value-of select="CustomerAssistancePhoneNo" />.
                </xsl:otherwise>
              </xsl:choose>
              <BR/>
              <BR/>
            </xsl:if>
            <xsl:if test="FlashSeats='True'">
              <xsl:choose>
                <xsl:when test="ScheduleFlashSeats='False'">
                  <FONT style="FONT-SIZE: 10pt;FONT-WEIGHT:bold;">
                    Your tickets will be delivered into your Flash Seats account after your order is fully processed.
                  </FONT>
                  <br/>
                  <br/>
                  If you do not receive a confirmation email from Flash Seats within the next 24 hours, please contact Customer Service by phone at: <xsl:value-of select="CustomerAssistancePhoneNo" />.
                </xsl:when>
                <xsl:otherwise>
                  <FONT style="FONT-SIZE: 10pt;FONT-WEIGHT:bold;">
                    Your tickets will be delivered into your Flash Seats account after your order is fully processed on <xsl:value-of select="FlashSeatsScheduleDate" />
                  </FONT>
                  <br/>
                  <br/>
                  If you do not receive a confirmation email from Flash Seats by <xsl:value-of select="FlashSeatsScheduleDate" />, please contact Customer Service by phone at:
                  <xsl:value-of select="CustomerAssistancePhoneNo" />.
                </xsl:otherwise>
              </xsl:choose>
              <br/>
              <br/>
              For more information about Flash Seats, please see our <a href="http://www.flashseats.com/img/p/s0/en_US/Getting_Started_Guide.pdf" target="_blank" >Getting Started Guide</a>
              <br/>
            </xsl:if>
          </xsl:when>
          <xsl:otherwise>
            Thank you for your purchase. Your confirmation
            number is <strong>
              <xsl:value-of select="ConfirmationNumber" />
            </strong>. Please keep
            this number for future reference.

            If you need the assistance of Customer Care please contact us by phone:
            <xsl:value-of select="CustomerAssistancePhoneNo" />.
            <BR />
          </xsl:otherwise>
        </xsl:choose>
			</P>
			<P>
				<TABLE style="WIDTH: 600px;" cellSpacing="3" cellPadding="2" border="0">
					<TR>
						<TD style="WIDTH: 150px">Order Date:</TD>
						<TD>
							<xsl:value-of select="OrderDate" />
						</TD>
					</TR>

					<xsl:apply-templates select="WillCall" />
					<xsl:apply-templates select="Address[@Type='Billing']" />		
					<xsl:apply-templates select="Address[@Type='Shipping']" />
					<TR>
						<TD style="WIDTH: 150px">URL:</TD>
						<TD>
							<A href="http://www.axs.com/">www.axs.com</A>
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 150px">Approval Auth Number:</TD>
						<TD>
							<xsl:value-of select="AuthNo" />
						</TD>
					</TR>
					<TR>
						<TD style="WIDTH: 150px">Reference Number:</TD>
						<TD>
							<xsl:value-of select="TransactionID" />
						</TD>
					</TR>
          <TR>
            <TD style="WIDTH: 150px">Merchant Name:</TD>
            <TD>
              <xsl:value-of select="MerchantName" />
            </TD>
          </TR>
					<xsl:apply-templates select="BoxOfficeHours" />
				</TABLE>
			</P>
			<table width="600px">

				<xsl:for-each select="Order/OrderItem">
				<tr>
					<td colspan="8">Ticket details for <xsl:value-of select="@Description" />
					<xsl:if test="@DateTime!=''"> scheduled on <xsl:value-of select="@DateTime" /></xsl:if></td>
				</tr>
				<tr>
					<td colspan="8">Method of Delivery: <xsl:value-of select="@MethodOfDelivery" />
					<HR /></td>
				</tr>

				<tr class="Header">
					<td align="center">Quantity</td>				
					<td align="left">Type</td>
					
					<td align="center">					
					<xsl:if test="@ViewNeighborhood = 'True'">
					Neighborhood
					</xsl:if>					
					</td>
					
					<td align="center">Section</td>
					<td align="center">Row</td>
					<td align="center">Seats</td>
					<td align="right">Price</td>
					<td align="right">Total</td>
				</tr>
				<tr>
					<td colspan="8">
						<HR />
					</td>
				</tr>
				<xsl:for-each select="Detail">
					<tr>
						<xsl:choose>
							<xsl:when test="EventHeader!=''">
								<td colspan="8" align="left">
									<xsl:value-of select="EventTitle" />
								</td>
							</xsl:when>
							<xsl:otherwise>
								<td align="center">
									<xsl:value-of select="Quantity" />
								</td>
								<td align="left">
									<xsl:value-of select="Type" />
								</td>
								<td align="center">
								<xsl:if test="../@ViewNeighborhood = 'True'">								
								<xsl:value-of select="Neighborhood" />
								</xsl:if>
								</td>
								
								<td align="center">
									<xsl:value-of select="Section" />
								</td>
									<td align="center">
										<xsl:value-of select="Row" />
									</td>
									<td align="center">
										<xsl:value-of select="Seats" />
									</td>
								<td align="right">
									<xsl:value-of select="Tickets" />
								</td>
								<td align="right">
									<xsl:value-of select="Total" />
								</td>
							</xsl:otherwise>
						</xsl:choose>
					</tr>
					</xsl:for-each>
					<tr>
						<td colspan="8">
						<HR />
					</td>
				</tr>
				</xsl:for-each>
				<tr>
					<td colspan="8">
						<h2></h2>
					</td>
				</tr>
				<tr>
					<td align="right" colspan="7">Sub Total:</td>
					<td align="right">
						<xsl:value-of select="Order/OrderSubTotal" />
					</td>
				</tr>
				<xsl:for-each select="OrderCharges/ChargeItem">
					<tr>
						<td align="right" colspan="7">
							<xsl:value-of select="Description" />:
						</td>
						<td align="right">
							<xsl:value-of select="Charge" />
						</td>
					</tr>
				</xsl:for-each>
				<tr>
					<td colspan="4"></td>
					<td colspan="4"><hr></hr></td>
				</tr>
				<xsl:for-each select="Order/Donation">
					<tr>
						<td align="right" colspan="7">
							<xsl:value-of select="Campaign" />:
						</td>
						<td align="right">
							<xsl:value-of select="Total" />
						</td>
					</tr>
				</xsl:for-each>
				<tr>
					<td colspan="4"></td>
					<td colspan="4"><hr></hr></td>
				</tr>
				<tr class="Header">
					<td align="right" colspan="7">
            <xsl:value-of select ="GrandTotal"/>
          </td>
          <td align="right">
            <xsl:value-of select="TotalSale" />
          </td>
      	</tr>
        <tr>
              <td></td>
				</tr>
        <tr class="Header">
          <td align="right" colspan="7">Amount Charged To Your Credit Card:</td>
          <td align="right">
            <xsl:value-of select="PayingToday" />
          </td>
        </tr>
				<tr>
					<td colspan="8"><hr></hr></td>
				</tr>
			</table>
			<BR />
      <xsl:if  test="ConfirmationText != ''">
        <table width="600px" cellpadding="5" cellspacing="5" border="0">
          <tr>
            <td>
              <font style="FONT-WEIGHT:bold;FONT-SIZE:12px;">Additional Delivery Information</font>
            </td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="ConfirmationText" disable-output-escaping="yes"/>
            </td>
          </tr>
        </table>
      </xsl:if>
      <xsl:apply-templates select="PaymentPlan" />
			<xsl:if test="ParkingInstructions = 'True'">
				<span class="Small">
				    <xsl:call-template name="Instructions" />
				</span>
			</xsl:if>
			<P>AXS</P>
			<BR /><BR />
			
			<HR />
			
			<Span class="Small">
				<xsl:call-template name="Agreement" />
			</Span>
		</body>
	</HTML>
</xsl:template>
<xsl:template match="Address">
	<TR>
		<TD style="WIDTH: 150px;" vAlign="top"><xsl:value-of select="@Type" /> Address:</TD>
		<TD vAlign="top">
			<xsl:value-of select="Name" />
			<xsl:if test="Name!=''">
				<BR />
			</xsl:if>
			<xsl:value-of select="Line1" /><BR />
			<xsl:value-of select="Line2" /><xsl:if test="Line2!=''">
				<BR />
			</xsl:if>
			<xsl:value-of select="City" />, <xsl:value-of select="State" />-<xsl:value-of select="Zip" />
			<Br>
			<xsl:value-of select="Country" />
			</Br>					
		</TD>
	</TR>
</xsl:template>
<xsl:template match="WillCall">
  <TR>
    <TD style="WIDTH: 150px;" vAlign="top">Will be Picked up By:</TD>
		<TD><xsl:value-of select="WillCallPickUpBy" /><BR /></TD>
	</TR>
</xsl:template>

<xsl:template name="Instructions">
</xsl:template>
<xsl:template name="Agreement">
  <table width="600px">
    <tr>
      By accepting this ticket, you are agreeing to the terms described here:
    </tr>
    <tr>
      AXS Terms and Conditions of Use <a href="http://www.axs.com/about-terms-of-use.html" target="_blank">
        http://www.axs.com/about-terms-of-use.html</a>
    </tr>
    <tr>
      Terms and Conditions of Sale <a href="http://www.axs.com/about-purchase-agreement.html" target="_blank">http://www.axs.com/about-purchase-agreement.html</a>
    </tr>
  </table>
</xsl:template>
  <xsl:template match="PaymentPlan">
      <strong>Payment Plan: <xsl:value-of select="Name" /></strong>
      <table>
        <tr class="Header">
          <td align="center">Date</td>
          <td align="right">Amount</td>
        </tr>
        <xsl:for-each select="Payment">
          <tr>
            <td>
              <xsl:value-of select="Date"/>
            </td>
            <td align="right">
              <xsl:value-of select="Amount"/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
  </xsl:template>
</xsl:stylesheet>