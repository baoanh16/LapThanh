<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="business-detail lapthanh-section">
		<div class="container">
			<h1 class="main-title"><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of></h1>
			<div class="row">
				<div class="col-lg-6">
					<div class="boximg">
						<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Image"></xsl:apply-templates>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="briefcontent">
						<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="row">
						<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="business-detail-2 lapthanh-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="fullcontent">
						<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="boximg">
						<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Thumbnail"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="NewsImages" mode="Image">
	<img class="lazyload">
		<xsl:attribute name="data-src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="alt">
			<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
	</img>
  </xsl:template>
  <xsl:template match="NewsImages" mode="Thumbnail">
	<img class="lazyload">
		<xsl:attribute name="data-src">
			<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
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