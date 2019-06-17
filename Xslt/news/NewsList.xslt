<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="row first-article">
		<xsl:apply-templates select="/NewsList/News" mode="first-article"></xsl:apply-templates>
	</div>
	<div class="row other-articles">
		<xsl:apply-templates select="/NewsList/News" mode="other-articles"></xsl:apply-templates>
	</div>
  </xsl:template>

  <xsl:template match="News" mode="first-article">
	<xsl:if test="position()=1">
		<div class="col-md-6">
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
		</div>
		<div class="col-md-6">
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
				<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
				<date><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
			</figcaption>
		</div>
	</xsl:if>
  </xsl:template>
  <xsl:template match="News" mode="other-articles">
	<xsl:if test="position()!=1">
		<div class="col-md-6">
			<div class="news-item">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
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
				</a>
			</div>
		</div>
	</xsl:if>
  </xsl:template>
</xsl:stylesheet>