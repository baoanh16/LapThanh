<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h1 class="main-title">
			<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
		</h1>
		<div class="row">
			<div class="col-12">
				<div style="display: flex; flex-wrap: wrap">
					<div class="searchbox">
						<div class="formgroup">
							<input id="txtKeyword" type="text" placeholder="Keyword "></input>
						</div>
					</div>
					<div class="searchbox">
						<input id="txtPlace" type="text" placeholder="Work place "></input>
					</div>
					<a id="btnSearchJob" class="btn-submit" href="#">search</a>
				</div>
			</div>
		</div>
		<div class="row ajaxresponse">
			<div class="col-12">
				<div class="table-main">
					<table>
						<thead>
							<tr>
								<th>position</th>
								<th>quantity</th>
								<th>area</th>
								<th>start day</th>
								<th>expiry day</th>
							</tr>
						</thead>
						<tbody class="listJob">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<tr>
			<xsl:if test="floor(ShowOption div 1) mod 2=1">
				<xsl:attribute name="class">
					<xsl:text>hot</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="StartDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>