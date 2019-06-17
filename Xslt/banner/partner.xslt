<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="partner lapthanh-section">
		<div class="container">
			<h1 class="main-title"><xsl:value-of select="/BannerList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h1>
			<div class="partner-slider">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
					<div class="swiper-buttons">
						<div class="btn-prev"><em class="mdi mdi-chevron-left"></em></div>
						<div class="btn-next"><em class="mdi mdi-chevron-right"></em></div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </xsl:template>

  <xsl:template match="Banner">
	<div class="swiper-slide">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<img class="lazyload blur-up">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</a>
	</div>
  </xsl:template>
</xsl:stylesheet>