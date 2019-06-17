<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="row">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</div>
  </xsl:template>
  <xsl:template match="News">
	<div class="col-sm-6 col-lg-4">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">Gallery_</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			
			<xsl:attribute name="data-caption">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			
			<xsl:attribute name="fancybox-gallery">
				<xsl:text disable-output-escaping="yes"></xsl:text>
			</xsl:attribute>
			<figure>
				<div class="boximg">
					<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</figcaption>
			</figure>
		</a>
		<div class="d-none">
			<xsl:apply-templates select="NewsImages">
				<xsl:with-param select="position()" name="Position">
				</xsl:with-param>
			</xsl:apply-templates>
		</div>
	</div>
  </xsl:template>


  <xsl:template match="NewsImages">
  <xsl:param name="Position"></xsl:param>
	  <a>
		  <xsl:attribute name="href">
			  <xsl:value-of select="ImageUrl"></xsl:value-of>
		  </xsl:attribute>
		  <xsl:attribute name="data-thumb">
			  <xsl:value-of select="ImageUrl"></xsl:value-of>
		  </xsl:attribute>
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">Gallery_</xsl:text>
				<xsl:value-of select="$Position" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="fancybox-gallery">
				<xsl:text disable-output-escaping="yes"></xsl:text>
			</xsl:attribute>
	  </a>
  </xsl:template>
</xsl:stylesheet>