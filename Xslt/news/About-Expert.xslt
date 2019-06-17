<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="about-3 lapthanh-section">
			<div class="container">
				<h2 class="main-title"><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="lapthanh-tab-v1">
					<div class="tab-headers">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
					<div class="tab-contents">
						<div class="tab active" id="tab-1"></div>
						<div class="tab" id="tab-2">
							<xsl:apply-templates select="News"></xsl:apply-templates>
						</div>
						<div class="tab" id="tab-3"></div>
						<div class="tab" id="tab-4"></div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="mobile">
			<select>
				<option value="#tab-1">
					<xsl:attribute name="title">
						<xsl:value-of select="/ZoneList/Title"></xsl:value-of>
					</xsl:attribute>
				</option>
			</select>
		</div>
		<div class="desktop">
			<a class="active" data-tab="#tab-1">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Desktop">
		<xsl:if test="position()=1">
			<a class="active" data-tab="#tab-1">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</a>
		</xsl:if>
		<xsl:if test="position()=2">
			<a data-tab="#tab-2">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</a>
		</xsl:if>
		<xsl:if test="position()=3">
			<a href="javascript:void(0)" data-tab="#tab-3">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</a>
		</xsl:if>
		<xsl:if test="position()=4">
			<a href="javascript:void(0)" data-tab="#tab-4">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News">
		<div class="row item">
			<div class="col-lg-4">
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
			</div>
			<div class="col-lg-8">
				<div class="content">
					<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					<h4><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></h4>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
