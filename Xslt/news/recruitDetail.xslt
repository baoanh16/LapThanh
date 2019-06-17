<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="recruitment-detail">
				<div class="row">
					<div class="col-md-8">
						<div class="job-info">
							<h2>
								<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<date><xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
						</div>
						<h4>Employment information</h4>
						<div class="table-main">
							<table>
								<tbody>
									<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
								</tbody>
							</table>
						</div>
						<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						<div class="comfirm-btn">
							<div class="apply-now">
								<a>
									<xsl:text disable-output-escaping="yes">Apply now</xsl:text>
								</a>
							</div>
							<span>Or</span>
							<div class="download">
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
									<xsl:text disable-output-escaping="yes">download application form</xsl:text>
								</a>
							</div>
						</div>
						
							<div class="form-apply">
								<iframe>
									<xsl:attribute name="src">
										<xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</iframe>
							</div>
					</div>
					<div class="col-md-4">
						<div class="other-position">
							<h2>Other position</h2>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="position">
			<date><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
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
			</h3>
		</div>
	</xsl:template>
	<xsl:template match="News">
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<tr>
			<th>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</th>
			<th>
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</th>
		</tr>
	</xsl:template>
</xsl:stylesheet>