<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="news-detail">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<div class="col-md-6">
					<div class="other-news">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
						<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=2">
				<div class="col-md-6">
					<div class="other-news">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
						<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<div class="news-item">
			<figure>
				<div class="boximg">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				</div>
				<figcaption>
					<h3>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<date><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>
