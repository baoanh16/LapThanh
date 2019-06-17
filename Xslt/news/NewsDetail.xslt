<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="news-detail lapthanh-section">
		<div class="container">
			<div class="row">
				<div class="col-md-7 col-lg-8">
					<div class="details">
						<h2>
							<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<date>
							<xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
						</date>
						<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						<div class="social-icons">
							<div class="fb-like" data-width="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false">
								<xsl:attribute name="data-href">
									<xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
							</div>
							<a class="twitter-share-button">
								<xsl:attribute name="href">
									<xsl:value-of select="FullUrl"></xsl:value-of>
								</xsl:attribute>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-5 col-lg-4">
					<div class="other-news">
						<h2>other news</h2>
						<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
					</div>
					<div class="other-news">
						<h2>For Investor</h2>
						<xsl:apply-templates select="/NewsDetail/NewsRelated"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</div>
  </xsl:template>
  <xsl:template match="NewsOther">
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
					<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					<date><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
				</figcaption>
			</figure>
		</a>
	</div>
  </xsl:template>
  <xsl:template match="NewsRelated">
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
					<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					<date><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></date>
				</figcaption>
			</figure>
		</a>
	</div>
  </xsl:template>
  <!--<xsl:template match="NewsAttributes" mode="tabs">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:text>#tab</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
  <xsl:template match="NewsAttributes" mode="tabcontent">
    <div class="tab-content">
      <xsl:attribute name="id">
        <xsl:text>tab</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
    </div>
  </xsl:template>
  <xsl:template match="NewsImages">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="ImageUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <img width="80" height="71">
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </a>
    </li>
  </xsl:template>-->
</xsl:stylesheet>