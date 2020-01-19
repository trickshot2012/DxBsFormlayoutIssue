<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">


    <div class="text-center">
        <asp:Label ID="LabelTopic" CssClass="text-center" runat="server" Text="BsFormLayoutIssue" Font-Size="XX-Large"></asp:Label>
    </div>
    <br />
    <div class="text-center">
        <asp:Label ID="Label1" CssClass="text-center" runat="server" ForeColor="Red" Text="what the heck : if Button btnSubmit is set Enabled to false it looks perfect" Font-Size="Medium"></asp:Label>
    </div>
    <br />


    <dx:BootstrapFormLayout runat="server" ID="FormLayoutDataBinding">
        <Items>
            <%--         Row 1   Start --%>

            <dx:BootstrapLayoutItem Caption="Name" Name="BsTbErstellt_von" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="BsTbErstellt_von" ReadOnly="true" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="Stufe" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="BootstrapTextBoxStufe" ReadOnly="true" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>


            <dx:BootstrapLayoutItem Caption="Datum" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="BsTbErstellt_am" ReadOnly="true" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <%--         Row 2   Start --%>

            <dx:BootstrapLayoutItem Caption="Partno" Name="Partno" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="Partno1" Enabled="false" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="Lfdnr" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="tbZnr2" Enabled="false" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="VasssssNr" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="tbZnr3">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="VasssssNr ist leer !" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <%--         Row 3   Start --%>

            <dx:BootstrapLayoutItem Caption="Partno2" Name="Partno2" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="Partno2" Enabled="false" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="Lfdnr2" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="tbArtnr2" Enabled="false" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <dx:BootstrapLayoutItem Caption="Vabbbbbnn2" ColSpanMd="4">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" CssClasses-Input="bigfont" ID="tbArtnr3">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Vabbbbbnn ist leer !" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <%--         Row 4   Start --%>


            <dx:BootstrapLayoutItem Caption="Bezeichnung" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapTextBox runat="server" ID="BsTbBezeichnung">
                            <ValidationSettings ValidationGroup="Validation">
                                <RequiredField IsRequired="true" ErrorText="Bezeichnung ist leer !" />
                            </ValidationSettings>
                        </dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

            <%--         Row 5   Start --%>


            <dx:BootstrapLayoutItem Caption="Beschreibung" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapMemo runat="server" ID="BsMemoBeschreibung" Rows="4" />
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>




            <dx:BootstrapLayoutItem HorizontalAlign="Right" ShowCaption="False" ColSpanMd="12">
                <ContentCollection>
                    <dx:ContentControl>
                        <dx:BootstrapButton runat="server" Text="Submit" Enabled="true" AutoPostBack="true" ID="btnSubmit">
                            <SettingsBootstrap RenderOption="Primary"></SettingsBootstrap>
                            <ClientSideEvents Click="conClick" />
                        </dx:BootstrapButton>

                        <dx:BootstrapButton runat="server" Text="Cancel" ID="btn1Cancel" SettingsBootstrap-RenderOption="Link" Enabled="true" AutoPostBack="true">
                            <SettingsBootstrap RenderOption="Link"></SettingsBootstrap>
                        </dx:BootstrapButton>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapLayoutItem>

        </Items>
    </dx:BootstrapFormLayout>

</asp:Content>

