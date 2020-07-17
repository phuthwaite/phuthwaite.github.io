<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:ms="urn:schemas-microsoft-com:xslt"
      xmlns:dt="urn:schemas-microsoft-com:datatypes">
  <xsl:output method="html" omit-xml-declaration="yes"/>
  <xsl:template match="Email">
    <HTML>
      <head>
        <!--[if !mso]>
<link href='http://fonts.googleapis.com/css?family=Lato’ rel='stylesheet' type='text/css' />
<![endif]-->
        <!--[if mso]>
<style type="text/css">
body, table, td, span {font-family: Arial, Helvetica, sans-serif;}
.backgroundColorFix {background-color: #c6007e!important;}
h3 {font-size: 14px !important;}
</style>
<![endif]-->
        <style type="text/css">
#outlook a{padding:0}.ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td{line-height:100%}.ExternalClass{width:100%}body{width:100% !important;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;margin:0;padding:0;font-size:14px;text-align:left}#backgroundTable{margin:0;padding:0;width:100% !important;line-height:100% !important}img{outline:none;text-decoration:none;-ms-interpolation-mode:bicubic}a img{border:none}.image_fix{display:block}p{margin:1em 0;line-height:1.4em;font-size:14px;font-weight:300;text-align:left}.smalltext p{font-size:13px;text-align:left}.smalltext h3{font-size:14px;text-transform:uppercase;font-weight:300;letter-spacing: .5px;margin-top:30px;text-align:left}table td{border-collapse:collapse}table,td,tr{border-collapse:collapse;mso-table-lspace:0pt;mso-table-rspace:0pt;margin:0;padding:0}a{color:#c9187d;text-decoration:none;font-weight:700}a:hover{text-decoration:underline}.data-header-text{color:darkgrey;font-weight:300;line-height:1.8em;vertical-align:middle;font-size:12px}.data-table tr td{padding:5px 0}.event-detail{font-size:16px;padding:10px 0;text-align:left}.delivery-detail{font-size:13px;color:#525355;line-height:1.4em;text-align:left}.data-table{font-size:13px;text-align:left}.data-table p{font-size:14px;font-weight:normal;padding:0 20px}.event-detail-icon{padding-right:10px;vertical-align:middle}.footer-container p{text-align:center}.footer-nav a{font-size:12px;color:#fff;font-weight:400 !important}.div{padding:0 5px;opacity: .4}[style*="Lato"]{font-family:'Lato',Arial,sans-serif !important}@media screen{body{font-family:'Lato',Arial,sans-serif !important}.wrapper{width:100%}.bg760{max-width:100%}.fullwidth{text-align:left}}@media only screen and (max-width: 620px){.container{width:100%!important;max-width:500px!important;height:auto!important}.footer-container{width:100%!important}.data-table,.data-header-text{font-size:11px}.mob-stack{width:100% !important;text-align:center;margin:5px 0}.fullwidth{width:90%!important;max-width:480px!important;height:auto!important}.mobilehide{display:none}}@media only braille{.contentwidth{width:265px!important}.devicewidth{width:inherit}}

.template-update {
    200310 PH: UX-3044 bubblegum fix for en-only
    200211 PH: reservation email created
    PLEASE CHECK WITH PAULINE, JEYA OR WILL BEFORE EDITING
    }

        </style>
      </head>
      <xsl:variable name="TemplateVersion" select="'AEGSE-SL-ENGONLY-RES-200310'"/>
      <xsl:variable name="ImageFolder">
        <xsl:value-of select="concat(ImageFolder,'/SL/confirmation/')"/>
      </xsl:variable>
      <xsl:variable name="AssQty">
         <xsl:value-of select="Order/OrderItem/Detail/Quantity"/>
       </xsl:variable>
      <xsl:variable name="AssIndex" select="position()"/>
      <xsl:variable name="allowable-length" select="19"/>

      <body bgcolor="#FFFFFF">

        <!-- start wrapper -->
        <table border="0" class="wrapper">
          <tr>
            <td align="center">

              <!-- start 100% container for bg -->
              <table class="bg760">
                <tr>
                  <td align="center" valign="top" width="760" bgcolor="#c6007e" style="background: linear-gradient(to right, #c6007e 0%, #c6007e 25%, #950C78 100%);">
                <!--[if gte mso 1]>
                <v:rect xmlns:v="urn:schemas-microsoft-com:vml" fill="true" stroke="false" style="mso-width-percent:1000" fillcolor="#c6007e">
                  <v:fill type="gradient" color2="#950C78"/>
                  <v:textbox style="mso-fit-shape-to-text:true" inset="0,0,0,0">
                  <center>
                <![endif]-->
                    <div>
                      <!-- start main container -->
                      <table border="0" align="center" height="100%" cellpadding="0" cellspacing="0" width="600" class="container">
                        <!-- start header - logos -->
                        <tr>
                          <td>
                            <table width="100%">
                              <tr>
                                <!-- venue logo -->
                                <td valign="bottom" align="left" height="100" width="50%"  class="backgroundColorFix" >
                                  <a href="https://www.stockholmlive.com" class="backgroundColorFix">
                                    <img align="left" valign="bottom" alt="Stockholm Live" height="62" width="144" style="color: #fff; font-size: 11px;">
                                      <xsl:attribute name="src">
                                        <xsl:value-of select="concat($ImageFolder,'sl_logo_header@2x.png')" disable-output-escaping="yes"/>
                                      </xsl:attribute>
                                    </img>
                                  </a>
                                </td>
                                <!-- ticketing by axs -->
                                <td valign="bottom" align="right" height="90" width="50%" class="backgroundColorFix">
                                  <span style="font-size: 12px; color: #fff; font-weight: 300; line-height: 25px; padding-right: 6px; letter-spacing: 0.05em">Ticketing by</span>
                                  <a href="https://www.axs.com/se">
                                    <img align="right" valign="bottom" alt="AXS" height="22" width="52" style="color: #fff; font-size: 11px;">
                                      <xsl:attribute name="src">
                                        <xsl:value-of select="concat($ImageFolder,'axs_logo_header@2x.png')" disable-output-escaping="yes"/>
                                      </xsl:attribute>
                                    </img>
                                  </a>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <!-- end header -->

                        <!-- start section title -->
                        <tr bgcolor="#000000">
                          <td align="center">
                            <table width="560" class="fullwidth" cellpadding="0" cellspacing="0">
                              <tr>
                                <td height="30">
                                  <span style="font-size: 13px; line-height: 30px; color: #fff; text-decoration: none; text-transform: uppercase; font-weight: 400; letter-spacing: 2px; font-family: 'Lato', Arial, sans-serif;"> RESERVATION </span>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <!-- end  title -->
                        <!-- spacer -->
                        <tr>
                          <td height="10" bgcolor="#ffffff">&#160;</td>
                        </tr>

                        <!-- start section content -->
                        <tr>
                          <td align="center" bgcolor="#FFFFFF">
                            <table width="560" cellpadding="0" cellspacing="0" border="0" class="fullwidth">

                              <!-- intro content -->
                              <tr>
                                <td>
                                  <p style="font-family: 'Lato', Arial, sans-serif; text-transform: capitalize;">
                                    Hi <xsl:value-of select="CustomerFirstName" />,
                                  </p>
                                   <p style="font-family: 'Lato', Arial, sans-serif;">
                                    This email confirms your reservation (ref:
                                    <strong>
                                      <xsl:value-of select="ConfirmationNumber" />
                                    </strong>)
                                    <xsl:if test="ReservationExpiryDate != ''">which is valid until 
                                    <strong>
                                      <xsl:value-of select="ReservationExpiryDate" />
                                  </strong>
                                  </xsl:if>.
                                    </p>

                                  <p style="font-family: 'Lato', Arial, sans-serif;">
                                    Please click the button below to pay for your reservation and secure your tickets.
                                  </p>
                                  <br />
                                    <a style="background-color: #c6007e; color: #fff; font-family: Lato-bold; padding: 16px 24px; max-width: 180px; text-align: center; letter-spacing:1px; font-size: 15px;">
                                      <xsl:attribute name="href">
                                            <xsl:value-of select="ReservationPaymentLink" disable-output-escaping="yes"/>
                                          </xsl:attribute>
                                      <strong>
                                      MAKE&#160;PAYMENT
                                      </strong>
                                  </a>
                                  <br /><br />
                                  
                                </td>
                              </tr>
                              <!-- end intro content -->

                            </table>
                          </td>
                        </tr>
                        <!-- end content -->

                        <!-- spacer -->
                        <tr>
                          <td height="20" bgcolor="#ffffff">&#160;</td>
                        </tr>
                        <!-- end section 1 -->

                        <!-- start section 2 -->
                        <!-- start title -->
                        <tr bgcolor="#000000">
                          <td align="center">
                            <table width="560" cellpadding="0" cellspacing="0" class="fullwidth">
                              <tr>
                                <td height="30">
                                  <span style="font-size: 13px; line-height: 30px; color: #fff; text-decoration: none; text-transform: uppercase; font-weight: 400; letter-spacing: 2px; font-family: 'Lato', Arial, sans-serif;">
                                    Ticket Details
                                  </span>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <!-- end title -->

                        <!-- spacer -->
                        <tr>
                          <td height="20" bgcolor="#ffffff">&#160;</td>
                        </tr>

                        <!-- start section content -->
                        <xsl:for-each select="Order/OrderItem">
                          <xsl:variable name="OfferType">
                              <xsl:choose>
                              <xsl:when test="SeasonOfferDate/FormatedStartTime">BundleOffer</xsl:when>
                              <xsl:otherwise>SingleOffer</xsl:otherwise>
                              </xsl:choose>
                          </xsl:variable>
                          <xsl:variable name ="TotalTickets">
                            <xsl:value-of select="sum(Detail/Quantity)"/>
                          </xsl:variable>

                          <!-- start event -->
                          <tr>
                            <td align="center" bgcolor="#FFFFFF">

                              <!-- start event name -->
                              <table width="560" cellpadding="0" cellspacing="0" border="0" class="fullwidth">
                                <tr>
                                  <td width="120">
                                    <xsl:if test="OfferImage!=''">
                                      <img width="105" height="62" alt="event">
                                        <xsl:attribute name="src">
                                          <xsl:value-of select="OfferImage/text()" disable-output-escaping="yes"/>
                                        </xsl:attribute>
                                      </img>
                                    </xsl:if>
                                  </td>
                                  <td style="font-size: 18px; line-height: 22px; text-align: left; font-family: 'Lato', Arial, sans-serif;" valign="middle">
                                    <!-- for testing only <xsl:value-of select="$OfferType" />&#160;-&#160; -->
                                    <xsl:value-of select="@Description" />
                                  </td>
                                </tr>
                                <!-- table spacer -->
                                <tr><td height="10" bgcolor="#ffffff" colspan="2">&#160;</td></tr>
                              </table>
                              <!-- end event name -->

                              <!-- event details -->
                              <table width="560" cellpadding="0" cellspacing="0" border="0" class="fullwidth" style="line-height: 1.6em;">
                                <xsl:choose>
                                  <xsl:when test="@FormatedStartTime!=''"><!-- attribute exists; single offer -->
                                    <tr>
                                      <td align="center" width="40">
                                        <img class="event-detail-icon" alt="calendar" height="21" width="22">
                                          <xsl:attribute name="src">
                                            <xsl:value-of select="concat($ImageFolder,'ico-cal-b@2x.png')" disable-output-escaping="yes"/>
                                          </xsl:attribute>
                                        </img>
                                      </td>
                                      <td class="event-detail" style="font-family: 'Lato', Arial, sans-serif; text-transform: capitalize;">
                                        <xsl:value-of select="@FormatedStartTime" />&#160;-&#160;<xsl:value-of select="@StartTime" />
                                      </td>
                                    </tr>
                                  </xsl:when>

                                  <xsl:otherwise><!-- bundle offer -->
                                    <xsl:for-each select="SeasonOfferDate">
                                      <tr>
                                        <td align="center" width="40">
                                          <xsl:if test="position()=1">
                                            <img class="event-detail-icon" alt="calendar" height="21" width="22">
                                              <xsl:attribute name="src">
                                                <xsl:value-of select="concat($ImageFolder,'ico-cal-b@2x.png')" disable-output-escaping="yes"/>
                                              </xsl:attribute>
                                            </img>
                                          </xsl:if>
                                        </td>
                                        <td class="event-detail" style="font-family: 'Lato', Arial, sans-serif; padding: 0; text-transform: capitalize;">
                                          <xsl:value-of select="FormatedStartTime" />&#160;-&#160;<xsl:value-of select="substring-before(StartTime, ',')" />
                                        </td>
                                      </tr>
                                    </xsl:for-each>
                                  </xsl:otherwise>
                                </xsl:choose>

                                <tr>
                                  <td align="center">
                                    <img class="event-detail-icon" alt="venue" height="24" width="17">
                                      <xsl:attribute name="src">
                                        <xsl:value-of select="concat($ImageFolder,'ico-location-b@2x.png')" disable-output-escaping="yes"/>
                                      </xsl:attribute>
                                    </img>
                                  </td>
                                  <td class="event-detail" style="font-family: 'Lato', Arial, sans-serif;">
                                    <xsl:value-of select="Venue/FullName" />&#160;-&#160;<xsl:value-of select="Venue/Address1" />, <xsl:value-of select="Venue/City" />, <span style="text-transform: uppercase;"><xsl:value-of select="Venue/PostCode"/></span>
                                  </td>
                                </tr>
                                <!-- start ticket qty -->
                                <xsl:if test="$OfferType='SingleOffer'">
                                <tr>
                                  <td align="center">
                                    <img class="event-detail-icon" alt="tickets" height="19" width="23">
                                      <xsl:attribute name="src">
                                        <xsl:value-of select="concat($ImageFolder,'ico-tix-b@2x.png')" disable-output-escaping="yes"/>
                                      </xsl:attribute>
                                    </img>
                                  </td>
                                  <td class="event-detail" style="font-family: 'Lato', Arial, sans-serif;">
                                    <xsl:value-of select="$TotalTickets"/>
                                    <xsl:choose>
                                      <xsl:when test="$TotalTickets=1">
                                        Ticket
                                      </xsl:when>
                                      <xsl:otherwise>
                                        Tickets
                                      </xsl:otherwise>
                                    </xsl:choose>
                                    &#160;-&#160;
                                      <xsl:value-of select="@MethodOfDelivery" />
                                  </td>
                                </tr>
                                </xsl:if>
                                <!-- end ticket qty -->

                                <!-- table spacer -->
                                <tr><td height="10" bgcolor="#ffffff" colspan="2">&#160;</td></tr>
                              </table>
                              <!-- end event details -->

                              <!-- start ticket data -->
                               <table width="560" cellpadding="0" cellspacing="0" border="0" class="data-table fullwidth">
                               <tr style="border-top: 1px solid #C4C4C4;">
                                  <td width="32%" align="left" class="data-header-text" style="border-top: 1px solid #C4C4C4; font-family: 'Lato', Arial, sans-serif;">Item</td>
                                  <td width="*" align="left" class="data-header-text" style="border-top: 1px solid #C4C4C4; font-family: 'Lato', Arial, sans-serif;">Location</td>
                                  <td width="7%" align="right" class="data-header-text" style="border-top: 1px solid #C4C4C4; font-family: 'Lato', Arial, sans-serif;">Qty</td>
                                  <td width="20%" align="right" class="data-header-text" style="border-top: 1px solid #C4C4C4; font-family: 'Lato', Arial, sans-serif;">Price/ea.</td>
                                </tr>

                                <!-- start back office ticket data -->
                                <xsl:if test="not(EventDetails)">
                                <xsl:for-each select="Detail">
                                  <tr>
                                    <td style="font-family: 'Lato', Arial, sans-serif;">
                                      <xsl:value-of select="substring(Type, 1, $allowable-length)"/>
                                      <xsl:if test="string-length(Type) &gt; $allowable-length">
                                         <xsl:text>&#8230;</xsl:text>
                                      </xsl:if>
                                    </td>
                                    <td style="font-family: 'Lato', Arial, sans-serif;">
                                      <!-- testing B-O--> <!-- testing -->
                                      <xsl:value-of select="Section" />
                                      <xsl:if test="Row != ''" ><!-- if Row isn't empty, print row & seat details, otherwise omit as it is GA... -->
                                        <span class="div" style="padding: 0 5px; opacity:.4;" >|</span>
                                        <xsl:value-of select="Row" />
                                        <span class="div" style="padding: 0 5px; opacity:.4;" >|</span>
                                        <xsl:choose>
                                          <xsl:when test="Quantity = '1' and contains(Seats, '-')" >
                                          <xsl:value-of select="substring-before(Seats, '-')" /><!-- only show single seat once -->
                                        </xsl:when>
                                        <xsl:otherwise><xsl:value-of select="Seats" /></xsl:otherwise>
                                      </xsl:choose>
                                      </xsl:if>
                                    </td>
                                    <td align="right" style="font-family: 'Lato', Arial, sans-serif;">
                                        <xsl:value-of select="Quantity" />
                                    </td>
                                    <td align="right" style="font-family: 'Lato', Arial, sans-serif;">
                                      <xsl:value-of select="Price" /><!-- price, per seat -->
                                    </td>
                                  </tr>
                                </xsl:for-each>
                              </xsl:if>
                              <!-- end back office ticket data -->

                              <!-- start MPS ticket data -->
                                <xsl:if test="EventDetails">
                                <xsl:for-each select="EventDetails/Detail">
                                  <tr>
                                    <td style="font-family: 'Lato', Arial, sans-serif;">
                                      <xsl:value-of select="substring(Type, 1, $allowable-length)"/>
                                      <xsl:if test="string-length(Type) &gt; $allowable-length">
                                         <xsl:text>&#8230;</xsl:text>
                                      </xsl:if>
                                    </td>
                                    <td style="font-family: 'Lato', Arial, sans-serif;">
                                      <!-- testing MPS--> <!-- testing -->
                                      <xsl:value-of select="Section" />
                                      <xsl:if test="Row != ''" ><!-- if Row isn't empty, print row & seat details, otherwise omit as it is GA -->
                                        <span class="div" style="padding: 0 5px; opacity:.4;" >|</span>
                                        <xsl:value-of select="Row" />
                                        <span class="div" style="padding: 0 5px; opacity:.4;" >|</span>
                                        <xsl:value-of select="Seats" />
                                      </xsl:if>
                                    </td>
                                    <td align="right" style="font-family: 'Lato', Arial, sans-serif;">
                                       <xsl:value-of select="Quantity" />
                                    </td>
                                    <td align="right" style="font-family: 'Lato', Arial, sans-serif;">
                                      <xsl:value-of select="Price" />
                                    </td>
                                  </tr>
                                </xsl:for-each>
                                </xsl:if>
                                <!-- end MPS ticket data -->
                              
                               <!-- Start Subtotal -->
                                <!-- mini spacer -->
                                <tr width="100%"><td height="3" colspan="4"></td></tr>
                                <tr style="border-top: 1px solid #C4C4C4;">
                                  <td width="85%" colspan="3" align="right" height="30" style="border-top: 1px solid #C4C4C4; font-family: 'Lato', Arial, sans-serif;">Subtotal:</td>
                                  <td width="15%" align="right" style="border-top: 1px solid #C4C4C4; font-family: 'Lato', Arial, sans-serif;">
                                    <strong>
                                      <xsl:choose>
                                        <xsl:when test="EventDetails">
                                          <xsl:value-of select="../OrderSubTotal" /><!-- MPS -->
                                        </xsl:when>
                                        <xsl:otherwise>
                                          <xsl:value-of select="OrderItemTotal" /> <!-- back office -->
                                        </xsl:otherwise>
                                      </xsl:choose>
                                    </strong>
                                  </td>
                                </tr>
                                <!-- end Subtotal -->
                              </table>
                              <!-- end ticket data -->

                            </td>
                          </tr>

                      <!-- end event -->

                          <xsl:if test="position() != last()" >
                            <tr class="" bgcolor="#fff">
                              <td align="center">
                                <table width="560" class="fullwidth" cellpadding="0" cellspacing="0">
                                  <tr style="border-top: 1px solid #C4C4C4;" height="15">
                                    <td>
                                      <span style="font-size: 14px; line-height: 30px;"> &#160;&#160;&#160;&#160; </span>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </xsl:if>
                        </xsl:for-each>

                    <!-- end section content -->

                        <!-- end section 2 -->

                        <!-- start section 3 -->
                        <!-- start content -->
                        <tr>
                          <td align="center" bgcolor="#FFFFFF">
                            <table border="0" align="center" width="560" cellpadding="0" cellspacing="0" class="fullwidth">
                              
                              <!-- purchase details -->
                              <tr>
                                <td>
                                  <table width="100%" class="data-table container" border="0" cellpadding="0" cellspacing="0">
                                   
                                    <xsl:for-each select="OrderCharges/ChargeItem">
                                        <tr>
                                            <td width="80%" height="20" align="right" style="font-family: 'Lato', Arial, sans-serif;">
                                                <xsl:value-of select="Description"/>
                                            </td>
                                            <td width="20%" height="20" align="right" style="font-family: 'Lato', Arial, sans-serif;">
                                                <xsl:value-of select="Charge"/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>

                                    <!-- mini spacer 
                                    <tr width="100%"><td height="3" colspan="5"></td></tr>-->

                                    <tr style="border-top: none;">
                                        <td width="80%" align="right" height="30" style="border-top: none; font-family: 'Lato', Arial, sans-serif;"><strong>Total Amount Due:</strong></td>
                                        <td width="20%" align="right" style="border-top: none; font-family: 'Lato', Arial, sans-serif; font-size: 16px;">
                                            <strong><xsl:value-of select="TotalSale"/></strong>
                                        </td>
                                    </tr>
                                </table>
                                </td>
                              </tr>

                              
                              <!-- spacer -->
                              <tr><td height="20">&#160;</td></tr>
                            </table>
                          </td>
                        </tr>
                        <!-- end content -->
                        <!-- end section 3 -->

                        <!-- start section 4 -->
                        <!-- start title -->
                        <tr bgcolor="#000000">
                          <td align="center">
                            <table width="560" class="fullwidth" cellpadding="0" cellspacing="0">
                              <tr>
                                <td height="30">
                                  <span style="font-size: 13px; line-height: 30px; color: #fff; text-decoration: none; text-transform: uppercase; font-weight: 400; letter-spacing: 2px; font-family: 'Lato', Arial, sans-serif;"> Important Information</span>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <!-- end title -->

                         <!-- start content -->
                        <tr>
                          <td align="center" bgcolor="#FFFFFF">
                            <table border="0" align="center" width="560" cellpadding="0" cellspacing="0" class="fullwidth smalltext">

                              <!-- spacer -->
                              <tr><td height="10">&#160;</td></tr>

                              <!-- start text -->
                              <tr>
                                <td align="left">
                                <p style="font-family: 'Lato', Arial, sans-serif;">
                                  If you have any issues with your payment or wish to request your reservation period to be extended please directly contact the member of staff that arranged your booking.
                                  <br /><br />
                                  This purchase is subject to our <a href="https://www.axs.com/uk/about-purchase-agreement.html">Purchase Agreement</a>.
                                  <br /><br />
                                  All ticket sales are final. No refunds, exchanges or cancellations are permitted.
                                </p>
                                </td>
                              </tr>
                              <!-- end text -->

                              <!-- spacer -->
                              <tr>
                                <td height="20">&#160;</td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <!-- end content -->
                        <!-- end section 4 -->

                        <!-- frame spacer -->
                        <tr>
                          <td height="30">&#160;</td>
                        </tr>
                      </table>
                      <!-- end fixed-width email container -->
                    </div>
                    <!--[if gte mso 9]>
          </v:textbox>
          </v:rect>
          <![endif]-->
                  </td>
                </tr>
                <!-- end bg blue fill -->

                <tr>
                  <td>
                    <!-- start bg white fill -->
                    <!-- start footer container -->
                    <table border="0" align="center" height="100%" cellpadding="0" cellspacing="0" width="100%" class="footer-container">

                      <!-- start footer content -->
                      <tr>
                        <td bgcolor="#ffffff" width="100%" align="center">
                          <table border="0" align="center" cellpadding="0" cellspacing="0" style="width: 90%; max-width: 560px;">

                            <!-- spacer -->
                            <tr>
                              <td style="line-height: 10px;" height="40">&#160;</td>
                            </tr>
                            <tr>
                              <td align="center">
                                <img alt="AXS" height="22" width="52" style="font-size: 10px; color: #000;">
                                  <xsl:attribute name="src">
                                    <xsl:value-of select="concat($ImageFolder,'axs_logo_sm_blue@2x.png')" disable-output-escaping="yes"/>
                                  </xsl:attribute>
                                </img>
                              </td>
                            </tr>
                            <tr>
                              <td align="center">
                                <p style="font-family: 'Lato', Arial, sans-serif;">AXS Sweden AB is partnered with:</p>
                              </td>
                            </tr>
                            <tr class="gplogos">
                              <td align="center">
                                <a href="https://www.axs.com/americanexpress" >
                                  <img alt="amex" height="56" width="58" style="font-size: 10px; color: #000;">
                                    <xsl:attribute name="src">
                                      <xsl:value-of select="concat($ImageFolder,'axs_amex@2x.png')" disable-output-escaping="yes"/>
                                    </xsl:attribute>
                                  </img>
                                </a>
                              </td>
                            </tr>

                            <!-- spacer -->
                            <tr><td height="20">&#160;</td></tr>

                            <tr>
                              <td align="center" class="smalltext">
                                <p style="font-family: 'Lato', Arial, sans-serif;">
                                  &#169;&#160;
                                  <xsl:value-of select="CurrentYear" />
                                  &#160;AXS Sweden AB. All rights reserved.
                                </p>
                              </td>
                            </tr>

                            <!-- start version -->
                            <tr>
                              <td style="line-height: 10px;" height="30">
                                <p style="font-family: 'Lato', Arial, sans-serif; color: #fff; padding: 0; margin: 0; font-size: 9px;">
                                <xsl:value-of select="$TemplateVersion" />
                              </p>
                              </td>
                            </tr>
                            <!-- end version -->

                          </table>
                        </td>
                      </tr>
                      <!-- end footer content -->

                      <!-- start footer nav -->
                      <tr>
                        <td height="40" bgcolor="#000000" align="center" style="color: #fff;">
                          <!-- nav container -->

                          <table align="center" cellpadding="0" cellspacing="0" class="mob-stack" style="width: 90%; max-width: 560px;">
                            <tr>
                              <td>
                                <!-- left - stack at 500px -->

                                <table class="mob-stack" border="0" cellpadding="0" cellspacing="0" align="left" valign="bottom">
                                  <tr>
                                    <td class="footer-nav" style="font-family: 'Lato', Arial, sans-serif;">
                                      <a href="https://www.axs.com/uk/about-terms-of-use.html" style="font-family: 'Lato', Arial, sans-serif;"> Terms of Use</a>
                                      <span class="div">|</span>
                                      <a href="https://www.axs.com/uk/about-privacy-policy.html" style="font-family: 'Lato', Arial, sans-serif;"> Privacy Policy</a>
                                      <span class="div">|</span>
                                      <a href="https://support.axs.com/hc/en-gb" style="font-family: 'Lato', Arial, sans-serif;"> Contact AXS</a>
                                    </td>
                                  </tr>
                                </table>

                                <!-- right - stack at 500px -->

                                <table class="mob-stack" border="0" cellpadding="0" cellspacing="0" align="right" valign="bottom">
                                  <tr>
                                    <td class="footer-nav">
                                      <a href="https://www.facebook.com/axs-1058179624236997/">
                                        <img alt="Facebook" style="outline-style:none;text-decoration:none;-ms-interpolation-mode:bicubic;border-style:none;" height="19" width="19">
                                          <xsl:attribute name="src">
                                            <xsl:value-of select="concat($ImageFolder,'ico-fb@2x.png')" disable-output-escaping="yes"/>
                                          </xsl:attribute>
                                        </img>
                                      </a>
                                      <span class="div">&#160;</span>
                                      <a href="https://twitter.com/AXS_SWE">
                                        <img alt="Twitter" style="outline-style:none;text-decoration:none;-ms-interpolation-mode:bicubic;border-style:none;" height="19" width="19">
                                          <xsl:attribute name="src">
                                            <xsl:value-of select="concat($ImageFolder,'ico-tw@2x.png')" disable-output-escaping="yes"/>
                                          </xsl:attribute>
                                        </img>
                                      </a>
                                      <span class="div">&#160;</span>
                                      <a href="https://www.instagram.com/axs_swe/">
                                        <img alt="Instagram" style="outline-style:none;text-decoration:none;-ms-interpolation-mode:bicubic;border-style:none;" height="19" width="19">
                                          <xsl:attribute name="src">
                                            <xsl:value-of select="concat($ImageFolder,'ico-ig@2x.png')" disable-output-escaping="yes"/>
                                          </xsl:attribute>
                                        </img>
                                      </a>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                          <!-- end nav container -->
                        </td>
                      </tr>
                      <!-- end footer nav -->

                    </table>
                    <!--end footer container -->
                  <!-- end bg white fill -->
                </td>
                </tr>
                
              </table>
              <!-- end full-width container -->
            </td>
          </tr>
        </table>
      </body>
    </HTML>
  </xsl:template>
</xsl:stylesheet>
