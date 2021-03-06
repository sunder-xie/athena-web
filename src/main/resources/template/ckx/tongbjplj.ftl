<?xml version="1.0"?>
<?mso-application progid="Excel.Sheet"?>
<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
 xmlns:o="urn:schemas-microsoft-com:office:office"
 xmlns:x="urn:schemas-microsoft-com:office:excel"
 xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
 xmlns:html="http://www.w3.org/TR/REC-html40">
 <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
  <LastAuthor>Administrator</LastAuthor>
  <Created>2012-09-07T06:05:41Z</Created>
  <LastSaved>2012-09-07T06:05:41Z</LastSaved>
  <Version>11.9999</Version>
 </DocumentProperties>
 <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
  <WindowHeight>6795</WindowHeight>
  <WindowWidth>11340</WindowWidth>
  <WindowTopX>360</WindowTopX>
  <WindowTopY>15</WindowTopY>
  <ProtectStructure>False</ProtectStructure>
  <ProtectWindows>False</ProtectWindows>
 </ExcelWorkbook>
 <Styles>
  <Style ss:ID="Default" ss:Name="Normal">
   <Alignment ss:Vertical="Bottom"/>
   <Borders/>
   <Font x:Family="Swiss" ss:Color="#000000"/>
   <Interior/>
   <NumberFormat/>
   <Protection/>
  </Style>
  <Style ss:ID="s21">
   <NumberFormat/>
  </Style>
  <Style ss:ID="s23">
   <Font x:Family="Swiss"/>
  </Style>
  <Style ss:ID="s24">
   <Font ss:FontName="宋体" x:CharSet="134" ss:Bold="1"/>
   <NumberFormat/>
  </Style>
  <Style ss:ID="s25">
   <Font ss:FontName="宋体" x:CharSet="134" ss:Size="9"/>
   <NumberFormat/>
  </Style>
  <Style ss:ID="s26">
   <NumberFormat ss:Format="@"/>
  </Style>
  <Style ss:ID="s27">
   <NumberFormat ss:Format="Fixed"/>
  </Style>
  <Style ss:ID="s28">
   <NumberFormat ss:Format="0.000"/>
  </Style>
 </Styles>
 <Worksheet ss:Name="tongbjplj">
  <Table ss:ExpandedColumnCount="${MAXCOLS}" ss:ExpandedRowCount="${MAXROWS}" x:FullColumns="1"
   x:FullRows="1">
   <Column ss:StyleID="s21" ss:AutoFitWidth="0" ss:Width="58.5"/>
   <Column ss:StyleID="s21" ss:Width="98.25"/>
   <Column ss:StyleID="s21" ss:Width="54"/>
   <Column ss:StyleID="s21" ss:Width="62.25"/>
   <Column ss:StyleID="s21" ss:AutoFitWidth="0" ss:Width="46.5"/>
   <Column ss:StyleID="s21" ss:AutoFitWidth="0" ss:Width="38.25"/>
   <Column ss:StyleID="s21" ss:AutoFitWidth="0" ss:Width="34.5"/>
   <Column ss:StyleID="s21" ss:Width="51" ss:Span="1"/>
   <Column ss:Index="10" ss:StyleID="s21" ss:Width="62.25"/>
   <Column ss:StyleID="s21" ss:Width="51"/>
   <Column ss:StyleID="s21" ss:Width="74.25"/>
   <Column ss:StyleID="s21" ss:Width="86.25"/>
   <Column ss:StyleID="s21" ss:Width="74.25"/>
   <Column ss:StyleID="s21" ss:Width="99.75"/>
   <Column ss:StyleID="s21" ss:Width="75.75"/>
   <Column ss:StyleID="s21" ss:Width="99.75"/>
   <Column ss:StyleID="s21" ss:Width="101.25"/>
   <Column ss:StyleID="s21" ss:AutoFitWidth="0" ss:Width="34.5" ss:Span="1"/>
   <Column ss:Index="21" ss:StyleID="s21" ss:Width="98.25"/>
   <Column ss:StyleID="s21" ss:AutoFitWidth="0" ss:Width="38.25"/>
   <Row ss:AutoFitHeight="0" ss:Height="18.75" ss:StyleID="s23">
    <Cell ss:StyleID="s24"><Data ss:Type="String">用户中心</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">零件编号</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">零件名称</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">生产线编号</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">CLASS</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">VALUE</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">配送类型</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">前后车标识</Data></Cell>
    <Cell ss:StyleID="s24"><Data ss:Type="String">集配包装位置</Data></Cell>
   </Row>
   
   <#list rows as rowData>
	   <Row ss:StyleID="s23">
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.usercenter!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.lingjbh!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.lingjmc!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.shengcxbh!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.nclass!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.nvalue!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.peislx!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.qianhcbs!''}</Data></Cell>
	    <Cell ss:StyleID="s25"><Data ss:Type="String">${rowData.jipbzwz!''}</Data></Cell>
	   </Row>
   </#list>
  </Table>
  <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
   <PageSetup>
    <PageMargins x:Left="0.8" x:Right="0.8"/>
   </PageSetup>
   <DisplayPageBreak/>
   <Print>
    <ValidPrinterInfo/>
    <PaperSizeIndex>9</PaperSizeIndex>
    <HorizontalResolution>600</HorizontalResolution>
    <VerticalResolution>0</VerticalResolution>
   </Print>
   <Selected/>
   <Panes>
    <Pane>
     <Number>3</Number>
     <ActiveRow>1</ActiveRow>
     <ActiveCol>7</ActiveCol>
    </Pane>
   </Panes>
   <ProtectObjects>False</ProtectObjects>
   <ProtectScenarios>False</ProtectScenarios>
  </WorksheetOptions>
 </Worksheet>
</Workbook>
