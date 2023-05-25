<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Curriculum</title>
        <link rel="stylesheet" href="index.css" />
      </head>
      <body>
        <div class="container">
          <header>
            <div class="picture">
              <img src="avatar-370-456322.webp" alt="Richard" width="150" height="150" />
            </div>
            <div class="identificador">
              <h1><xsl:value-of select="curriculum/informacion-personal/nombre"/></h1>
            </div>
            <nav>
              <ul>
                <li><a href="#Contacteinfo">Infomacio de contacte</a></li>
                <li><a href="#Experiencia">Experiencia Laboral</a></li>
                <li><a href="#Educacio">Educacio</a></li>
              </ul>
            </nav>
          </header>
          <div class="section">
            <h3 id="Contacteinfo">Informació de contatce</h3>
            <p><xsl:value-of select="curriculum/informacion-personal/email"/></p>
            <p><xsl:value-of select="curriculum/informacion-personal/telefono"/></p>
            <p><xsl:value-of select="curriculum/informacion-personal/adreca"/></p>
          </div>

          <div id="Experiencia" class="section">
            <h3 class="titul-seccio">Experiencia_Laboral</h3>
            <xsl:for-each select="curriculum/experiencia-laboral/trabajo">
              <p>
                <xsl:value-of select="nombre"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="cargo"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="fecha"/>
                <xsl:text>. </xsl:text>
                <xsl:value-of select="descripcion"/>
              </p>
            </xsl:for-each>
          </div>

          <div id="Educacio" class="section">
            <h3 class="titul-seccio">Educacio</h3>
            <div class="section-content">
              <h4><xsl:value-of select="curriculum/educacion/titulo"/> al <xsl:value-of select="curriculum/educacion/institucion"/></h4>
              <span><xsl:value-of select="curriculum/educacion/fecha"/></span>
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>