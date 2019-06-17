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
		<div class="gallery-item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
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
						<div class="play-btn">
							<img src="/Data/Sites/1/media/thuvien/videos/play-btn.png" alt=""></img>
						</div>
					</div>
					<figcaption>
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
					</figcaption>
				</figure>
			</a>
		</div>
	</div>
  </xsl:template>
</xsl:stylesheet>