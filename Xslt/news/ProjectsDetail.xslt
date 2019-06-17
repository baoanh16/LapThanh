<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="project-detail lapthanh-section">
		<div class="container">
			<h1><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
			<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
			<time><xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
			<div class="full-content">
				<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
				<div class="social-icons">
					<div class="fb-like" data-width="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false">
						<xsl:attribute name="data-href">
							<xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
					</div>
					<a class="twitter-share-button">
						<xsl:attribute name="href">
							<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
						</xsl:attribute>
					</a>
				</div>
			</div>
			<div class="news-other projects">
				<div class="title">
					<h2>Other projects</h2>
				</div>
				<div class="news-other-slider">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
						<div class="swiper-buttons">
							<div class="btn-prev"><em class="mdi mdi-chevron-left"></em></div>
							<div class="btn-next"><em class="mdi mdi-chevron-right"></em></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="NewsOther">
	<div class="swiper-slide">
		<a class="project">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<div class="img">
				<img class="lazyload blur-up">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="content">
				<p><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></p>
				<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2><em class="mdi mdi-arrow-right"></em>
			</div>
			<div class="cover">
			</div>
		</a>
	</div>
  </xsl:template>
</xsl:stylesheet>