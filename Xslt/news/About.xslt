<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=2">
				<div class="about-2 lapthanh-section">
					<div class="container">
						<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position()=3">
				<div class="about-3 lapthanh-section">
					<div class="container">
						<h2 class="main-title">
							<xsl:value-of select='Title'></xsl:value-of>
						</h2>
						<div class="lapthanh-tab-v1">
							<div class="tab-headers">
								<div class="mobile">
									<select>
										<xsl:apply-templates select='Zone' mode="Child-Mobile"></xsl:apply-templates>
									</select>
								</div>
								<div class="desktop">
									<xsl:apply-templates select='Zone' mode="Child-Desktop"></xsl:apply-templates>
								</div>
							</div>
							<div class="tab-contents">
								<xsl:apply-templates select='Zone' mode="TabContent"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<h2 class="main-title">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="row">
			<div class="col-lg-6 image">
				<a data-fancybox="about-2">
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
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
			<div class="col-lg-6 content">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match='Zone' mode="Child-Mobile">
		<option>
			<xsl:attribute name='value'>
				<xsl:text>#tab-</xsl:text>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select='Title'></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match='Zone' mode="Child-Desktop">
		<a href="javascript:void(0)">
			<xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='data-tab'>
				<xsl:text>#tab-</xsl:text>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select='Title'></xsl:value-of>
		</a>
	</xsl:template>
	<xsl:template match='Zone' mode="TabContent">
		<div class="tab">
			<xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>tab active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='id'>
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<xsl:apply-templates select='News' mode='ZoneNews3'></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match='News' mode='ZoneNews3'>
		<div class="row item">
			<div class="col-lg-4">
				<div class="img">
					<img class="lazyload blur-up">
					<xsl:attribute name='data-src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-8">
				<h3>
					<xsl:value-of select='Title'></xsl:value-of>
				</h3>
				<h4>
					<xsl:value-of select='SubTitle'></xsl:value-of>
				</h4>
				<div class="content">
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>