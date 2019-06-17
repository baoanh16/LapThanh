<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="home-2" bg-img="/Data/Sites/1/media/home/bg-factory.jpg" bg-img-mobile="/Data/Sites/1/media/home/bg-factory.jpg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="boximg">
						<xsl:apply-templates select="/NewsList/News" mode="Image"></xsl:apply-templates>
					</div>
				</div>
				<div class="col-lg-6"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="boximg"></div>
				</div>
				<div class="col-lg-6">
					<div class="BriefContent">
						<xsl:apply-templates select="/NewsList/News" mode="content"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="News" mode="content">
	<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
	<p>
		<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
	</p>
	<div class="view-more">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</div>
  </xsl:template>
  <xsl:template match="News" mode="Image">
	<img class="lazyload">
		<xsl:attribute name="data-src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="alt">
			<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
	</img>
  </xsl:template>
	<xsl:template match="NewsAttributes">
		<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>