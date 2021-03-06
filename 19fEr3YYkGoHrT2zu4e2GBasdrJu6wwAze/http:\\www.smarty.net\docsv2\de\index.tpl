http://www.smarty.net/docsv2/de/index.tpl
HTTP/1.1 200 OK
Date: Wed, 23 Jul 2014 05:45:54 GMT
Server: Apache/2.2.22 (Ubuntu)
X-Powered-By: PHP/5.3.10-1ubuntu3.13
Vary: Accept-Encoding
Content-Encoding: gzip
Content-Length: 13963
Connection: close
Content-Type: text/html

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Smarty - die kompilierende PHP Template-Engine | Smarty</title>
    <meta name="description" content="Smarty is a template engine for PHP.">
    <meta name="keywords" content="smarty, template, engine, php">
    <style type="text/css" media="screen">
    @import "/css/screen/global.css";
    @import "/css/typography.css";
    </style>
    
    <!--[if lt IE 7]>
    <style type="text/css" media="screen">
    @import "/css/screen/fix_ie.css";
    </style>
    <![endif]-->
    
    <!--[if IE 7]>
    <style type="text/css" media="screen">
    @import "/css/screen/fix_ie7.css";
    </style>
    <![endif]-->
    
    <link rel="stylesheet" type="text/css" media="print" href="/css/typography.css">
    <link rel="stylesheet" type="text/css" media="print" href="/css/print/global.css">
    <link rel="stylesheet" type="text/css" media="screen" href="/js/bbedit.css">
    
    <script type="text/javascript" src="http://www.google.com/jsapi?key=ABQIAAAAtNLTcaiYcFN-f4XrzpVY_RSkE6bExsEa6fcoWABjZpep9Iy-rxQHKn32rDn2QOaRGdO78OCTegXQvw"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/js/jquery.bbedit.min.js"></script>

    <link href="/js/prettify/prettify.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/js/prettify/prettify.js"></script>    
    
    <script type="text/JavaScript"> 
     $(document).ready(function(){
       prettyPrint();
              $("#commentFormBodyText").bbedit({
           highlight: true,
           enableSmileybar: false,
           tags: 'b,i,url,code,quote'
       });
       $("#commentPreviewText").hide();
       $("#commentPostedText").hide();
       $("#commentBusyIcon").hide();
       $("#commentForm").submit(function() { return false; });
       $("#commentFormPreviewButton").click(function(){
         $("#commentBusyIcon").show();
         $.post("/comments/preview", { body: $("#commentFormBodyText").val(), author: $("#commentFormAuthorText").val() },
            function(data){
              var options = {};
              if($("#commentPreviewText").is(":visible")) {
                $("#commentPreviewText").hide('blind',options,500,function() {
                  $("#commentPreviewText").html(data);
                  $("#commentPreviewText").show('blind',options,500,function() {
                    $("#commentBusyIcon").hide();
                  });                  
                });
              } else {
                $("#commentPreviewText").html(data);
                $("#commentPreviewText").show('blind',options,500,function() {
                  $("#commentBusyIcon").hide();
                });                  
              }
            });
       }); 
       $("#commentFormPostButton").click(function(){
         $("#commentBusyIcon").show();
         $.post("/comments/post", { body: $("#commentFormBodyText").val(), author: $("#commentFormAuthorText").val(), page_id: $("#commentFormPageID").val(), email: $("#commentFormEmailText").val(), challenge: $("#commentFormChallengeText").val(), obf: $("#commentFormChallengeObf").val()},
            function(data){
              var options = {};
              $("#commentPostedText").html(data);
              if($("#commentPreviewText").is(":visible")) {
                $("#commentPreviewText").hide('blind',options,500,function() {
                  $("#commentPostedText").show('blind',options,500,function() {
                    $("#commentBusyIcon").hide();
                    $("#commentFormPostButton").attr('disabled','true'); 
                    $("#commentFormPreviewButton").attr('disabled','true'); 
                  });
                });
              } else {
                $("#commentPostedText").show('blind',options,500,function() {
                  $("#commentBusyIcon").hide();
                  $("#commentFormPostButton").attr('disabled','true'); 
                  $("#commentFormPreviewButton").attr('disabled','true'); 
                });
              }                  
            });
       });
            });
          function clearDefaultandCSS(el) {
     	if (el.defaultValue==el.value) el.value = ""
     	// If Dynamic Style is supported, clear the style
     	if (el.style) el.style.cssText = ""
     }
         </script>
    
    <script type="text/javascript" src="/js/smarty.js"></script>
  	<script type="text/javascript" src="http://partner.googleadservices.com/gampad/google_service.js"> 
  	</script> 
  	<script type="text/javascript"> 
  	  GS_googleAddAdSenseService("ca-pub-8878956630941543");
  	  GS_googleEnableAllServices();
  	</script> 
  	<script type="text/javascript"> 
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_footer");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_left_box");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_right_skyscraper");
  	  GA_googleAddSlot("ca-pub-8878956630941543", "smarty_top_banner");
  	</script> 
  	<script type="text/javascript"> 
  	  GA_googleFetchAds();
  	</script>
  </head>
  <body>
  <a class="skiplink" accesskey="S" href="#mainContent">Skip over navigation</a>
  <div id="wrapper">
      <div id="header">
        <div id="header_logo">
          <div id="logo"><a href="/"><img src="/images/logo_print.gif" width="249" height="74" alt="Smarty Template Engine"></a></div>
        </div>
        <div id="header_ad" style="float: right;">
      		<script type="text/javascript"> 
      		  GA_googleFillSlot("smarty_footer");
      		</script>
      	</div>
        <div class="clear"></div>
      </div>
      <div id="nav">
        <ul class="nav navHorz">
		  		  		  		  		  		              		<li><a href="/" accesskey="1">Home</a></li>
					  		              		<li><a href="/download" >Download</a></li>
					  		              		<li><a href="/documentation" accesskey="6">Documentation</a></li>
					  		              		<li><a href="http://smarty.incutio.com/?page=SmartyFrequentlyAskedQuestions" >FAQ</a></li>
					  		              		<li><a href="/forums/" >Forum</a></li>
					  		              		<li><a href="/mailinglists" >Mailing Lists</a></li>
					          </ul>
        
        <form action="/search" method="get">
          <p>
            <input type="text" name="q" size="30" value="Search..." accesskey="4" class="field" onclick="smarty.removeDefaultValue(this, 'Search...');" onfocus="smarty.removeDefaultValue(this, 'Search...');" onblur="smarty.restoreDefaultValue(this, 'Search...');">
            in
            <select name="show" class="field">
              <optgroup label="Documentation">
                <option value="manual-en">English</option>
                <option value="manual-de">German</option>
                <option value="manual-es">Spanish</option>
                <option value="manual-fr">French</option>
                <option value="manual-it">Italian</option>
                <option value="manual-ja">Japanese</option>
                <option value="manual-pt_BR">Portuguese</option>
                <option value="manual-ru">Russian</option>
              </optgroup>
              <optgroup label="Mailing Lists">
                <option value="smarty-general-list">General</option>
                <option value="smarty-dev-list">Development</option>
              </optgroup>
            </select>
            <input type="image" src="/images/search.png" alt="Submit Search" class="button">
          </p>
        </form>
        <div class="clear"></div>
      </div>
     
      <div class="col colSecondary">
        <div class="box box1">
          <h1 class="boxHead">Get Smarty</h1>
          <ul class="nav navVert"
            ><li><a href="/download">Download</a></li
          ></ul>
        </div>
        
        <div class="box box1">
          <h1 class="boxHead">About Smarty</h1>
          <ul class="nav navVert"
          ><li><a href="/about_smarty">All About Smarty</a></li
            ><li><a href="/why_use">Why use it?</a></li
              ><li><a href="/use_cases">Use Cases and Work Flow</a></li
            ><li><a href="/syntax_comparison">Syntax Comparison</a></li
            ><li><a href="/inheritance">Template Inheritance</a></li
            ><li><a href="/best_practices">Best Practices</a></li
            ><li><a href="/crash_course">Crash Course</a></li
            ><li><a href="/v3_overview">Version 3 Overview</a></li
            ><li><a href="/forums/viewforum.php?f=12">Testimonials</a></li
              ><li><a href="http://smarty.incutio.com/?page=SitesUsingSmarty">Sites Using Smarty</a></li
          ></ul>
        </div>
        
        <div class="box box1">
          <h1 class="boxHead">Resources</h1>
          <ul class="nav navVert"
          ><li><a href="http://smarty-php.googlecode.com/svn/trunk/distribution/SMARTY_2_BC_NOTES.txt">Smarty 2-&gt;3 upgrade notes</a></li
            ><li><a href="http://smarty-php.googlecode.com/svn/trunk/distribution/README">README (from distro)</a></li
          ><li><a href="/quick_install">Quick Install</a></li
	      ><li><a href="/documentation">Documentation</a></li
		  ><li><a href="/forums/">Discussion Forums</a></li
	      ><li><a href="/sampleapp1">Example App</a></li
          ><li><a href="irc://irc.freenode.net/smarty">IRC (chat)</a></li
          ><li><a href="/mailinglists">Mailing Lists</a></li
          ><li><a href="http://smarty.incutio.com/">Community Wiki</a></li
          ><li><a href="http://smarty.incutio.com/?page=SmartyFrequentlyAskedQuestions">FAQ (wiki)</a></li
          ><li><a href="http://www.smarty.net/forums/viewforum.php?f=23" accesskey="5">FAQ (forums)</a></li
          ><li><a href="http://www.jdoqocy.com/click-4355642-10718312?url=http%3A%2F%2Fwww.odesk.com%2Fcontractors%2Fskill%2Fsmarty%2Ffb%2F4.5-5.0-stars.4.0-4.5-stars%2Fsort%2Fadjusted-score%2Bdesc?vt_cmp=smarty">Hire Smarty Developers</a></li
          ></ul>
        </div>
        <div class="box box1">
          <h1 class="boxHead">Links</h1>
          <ul class="nav navVert"
          ><li><a href="http://www.php.net/">www.php.net</a></li
            ><li><a href="http://www.phpinsider.com/">www.phpinsider.com</a></li
            ><li><a href="http://www.ellysdirectory.com/">www.ellysdirectory.com</a></li
              
              
          ></ul>
        </div>
        <div class="box box1" id="bitcoin">
          <h1 class="boxHead">Donate</h1>
          <div align="center" class="boxContent">
            <div>
            <a href="javascript:void(0);" onclick="javascript:window.prompt ('Copy and paste address to your bitcoin software:', '19fEr3YYkGoHrT2zu4e2GBasdrJu6wwAze');"><img src="/images/bitcoin.png" width="25" height="25" alt="Donate Bitcoin" style="vertical-align:middle"> Bitcoin</a>
            </div>
            <div>
            <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="AK2ZWFVSNJEDE">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" border="0" name="submit" alt="PayPal Donate" style="vertical-align:middle"> Paypal
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
            </div>
          </div>
        </div>
        <div class="box box1" id="smartyIcons">
          <h1 class="boxHead">Smarty Icon</h1>
          <div align="center" class="boxContent">
            <p style="text-align: left">You may use the Smarty logo according to the <a href="/copyright">trademark notice</a>.</p>
            <p>
              <img src="/images/icons/smarty_icon.gif" width="88" height="31" alt="Smarty Template Engine">
              <img src="/images/icons/smarty-80x15.png" width="80" height="15" alt="Smarty Template Engine">
            </p>
            <p style="text-align: left">
              For sponsorship, advertising, news or other inquiries, contact us at: <script type="text/javascript" language="javascript">
{document.write(String.fromCharCode(60,97,32,104,114,101,102,61,34,109,97,105,108,116,111,58,119,101,98,109,97,115,116,101,114,64,115,109,97,114,116,121,46,110,101,116,34,32,62,119,101,98,109,97,115,116,101,114,64,115,109,97,114,116,121,46,110,101,116,60,47,97,62))}
</script>

            </p>
          </div>
        </div>        
        <div class="box box1" id="sitesUsingSmarty">
          <h1 class="boxHead">Sites Using Smarty</h1>
          <div align="center" class="boxContent">
               <p>Largest classified with thousands of ads at <a href="http://www.shoppok.com">Shoppok</a></p>
			   <p>Buy <a href="http://www.cheapglasses123.com/">cheap eyeglasses</a> from <a href="http://www.cheapglasses123.com/">Cheapglasses123.com</a> and save up to 80%.</p>
			   <p>Buy wedding dresses on SiteSteer.com - <a href="http://www.sitesteer.com/">Best Online Wedding Dress Store</a></p>
      			<p>
      			  Buy <a href="http://www.australiaglasses.com/">prescription glasses</a> from <a href="http://www.australiaglasses.com/">www.australiaglasses.com</a> and save.
				</p>
				<p>
  					<a href="http://www.glassespeople.com/">Cheap Glasses</a> Now On Sale at <a href="http://www.glassespeople.com/">GlassesPeople.com</a>. Starts At $7.95.
      			</p>
      			<p>
      			Where to buy <a href="http://www.weddingdresstrend.com/">discount wedding dresses</a> and cheap smart dresses free shipping - <a href="http://www.weddingdresstrend.com/">Weddingdresstrend.com</a>
      			</p>
      			<p>
                	<script type="text/javascript"> 
      			  GA_googleFillSlot("smarty_left_box");
      			</script>
      			</p>
          </div>
        </div>        

      </div><!-- end colSecondary -->
      
      <div class="col colMain" id="mainContent">
      
<div class="navheader">
<table width="100%" summary="Navigation header">
<tr><th colspan="3" align="center">Smarty - die kompilierende PHP Template-Engine</th></tr>
<tr>
<td width="20%" align="left"> </td>
<th width="60%" align="center"> </th>
<td width="20%" align="right"> <a accesskey="n" href="preface.tpl">Next</a>
</td>
</tr>
</table>
<hr>
</div>
<div class="book" title="Smarty - die kompilierende PHP Template-Engine">
<div class="titlepage">
<div>
<div><h1 class="title">
<a name="manual"></a>Smarty - die kompilierende PHP Template-Engine</h1></div>
<div><div class="authorgroup">
<a name="authors"></a><div class="author"><h3 class="author">
<span class="firstname">Monte</span> <span class="surname">Ohrt &lt;monte at ohrt dot com&gt;</span>
</h3></div>
<div class="author"><h3 class="author">
<span class="firstname">Andrei</span> <span class="surname">Zmievski &lt;andrei@php.net&gt;</span>
</h3></div>
</div></div>
<div><div class="authorgroup">
<a name="translators"></a><div class="author"><h3 class="author">
<span class="firstname">Andreas</span> <span class="surname">Halter &lt;smarty@andreashalter.ch&gt; (Deutsche Übersetzung)</span>
</h3></div>
<div class="author"><h3 class="author">
<span class="firstname">Thomas</span> <span class="surname">Schulz &lt;ths@4bconsult.de&gt; (Review der deutschen Übersetzung)</span>
</h3></div>
</div></div>
<div><p class="copyright">Copyright © 2001-2005 New Digital Group, Inc.</p></div>
<div><p class="pubdate">2010-09-20</p></div>
</div>
<hr>
</div>
<div class="toc">
<p><b>Table of Contents</b></p>
<dl>
<dt><span class="preface"><a href="preface.tpl">Vorwort</a></span></dt>
<dt><span class="part"><a href="getting.started.tpl">I. Erste Schritte</a></span></dt>
<dd><dl>
<dt><span class="chapter"><a href="what.is.smarty.tpl">1. Was ist Smarty?</a></span></dt>
<dt><span class="chapter"><a href="installation.tpl">2. Installation</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="installation.tpl#installation.requirements">Anforderungen</a></span></dt>
<dt><span class="sect1"><a href="installing.smarty.basic.tpl">Basis Installation</a></span></dt>
<dt><span class="sect1"><a href="installing.smarty.extended.tpl">Erweiterte Konfiguration</a></span></dt>
</dl></dd>
</dl></dd>
<dt><span class="part"><a href="smarty.for.designers.tpl">II. Smarty für Template Designer</a></span></dt>
<dd><dl>
<dt><span class="chapter"><a href="language.basic.syntax.tpl">3. Grundlegende Syntax</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="language.basic.syntax.tpl#language.syntax.comments">Kommentare</a></span></dt>
<dt><span class="sect1"><a href="language.syntax.variables.tpl">Variablen</a></span></dt>
<dt><span class="sect1"><a href="language.syntax.functions.tpl">Funktionen</a></span></dt>
<dt><span class="sect1"><a href="language.syntax.attributes.tpl">Attribute / Parameter</a></span></dt>
<dt><span class="sect1"><a href="language.syntax.quotes.tpl">Variablen mit Doppelten Anführungszeichen</a></span></dt>
<dt><span class="sect1"><a href="language.math.tpl">Math</a></span></dt>
<dt><span class="sect1"><a href="language.escaping.tpl">Smarty Parsing umgehen</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="language.variables.tpl">4. Variablen</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="language.variables.tpl#language.assigned.variables">Aus einem PHP-Skript zugewiesene Variablen</a></span></dt>
<dd><dl>
<dt><span class="sect2"><a href="language.variables.tpl#language.variables.assoc.arrays">Assoziative Arrays</a></span></dt>
<dt><span class="sect2"><a href="language.variables.tpl#language.variables.array.indexes">Array Index</a></span></dt>
<dt><span class="sect2"><a href="language.variables.tpl#language.variables.objects">Objekte</a></span></dt>
</dl></dd>
<dt><span class="sect1"><a href="language.config.variables.tpl">Verwendung von Variablen aus Konfigurationsdateien</a></span></dt>
<dt><span class="sect1"><a href="language.variables.smarty.tpl">Die reservierte {$smarty} Variable</a></span></dt>
<dd><dl>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.request">Request-Variablen</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.now">{$smarty.now}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.const">{$smarty.const}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.capture">{$smarty.capture}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.config">{$smarty.config}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.loops">{$smarty.section}, {$smarty.foreach}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.template">{$smarty.template}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.version">{$smarty.version}</a></span></dt>
<dt><span class="sect2"><a href="language.variables.smarty.tpl#language.variables.smarty.ldelim">{$smarty.ldelim}, {$smarty.rdelim}</a></span></dt>
</dl></dd>
</dl></dd>
<dt><span class="chapter"><a href="language.modifiers.tpl">5. Variablen-Modifikatoren</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="language.modifiers.tpl#language.modifier.capitalize">capitalize (in Grossbuchstaben schreiben)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.cat.tpl">cat</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.count.characters.tpl">count_characters (Buchstaben zählen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.count.paragraphs.tpl">count_paragraphs (Absätze zählen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.count.sentences.tpl">count_sentences (Sätze zählen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.count.words.tpl">count_words (Wörter zählen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.date.format.tpl">date_format (Datums Formatierung)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.default.tpl">default (Standardwert)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.escape.tpl">escape (Maskieren)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.indent.tpl">indent (Einrücken)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.lower.tpl">lower (in Kleinbuchstaben schreiben)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.nl2br.tpl">nl2br</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.regex.replace.tpl">regex_replace (Ersetzen mit regulären Ausdrücken)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.replace.tpl">replace (Ersetzen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.spacify.tpl">spacify (Zeichenkette splitten)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.string.format.tpl">string_format (Zeichenkette formatieren)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.strip.tpl">strip (Zeichenkette strippen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.strip.tags.tpl">strip_tags</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.truncate.tpl">truncate (kürzen)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.upper.tpl">upper (in Grossbuchstaben umwandeln)</a></span></dt>
<dt><span class="sect1"><a href="language.modifier.wordwrap.tpl">wordwrap (Zeilenumbruch)</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="language.combining.modifiers.tpl">6. Kombinieren von Modifikatoren</a></span></dt>
<dt><span class="chapter"><a href="language.builtin.functions.tpl">7. Eingebaute Funktionen</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="language.builtin.functions.tpl#language.function.capture">{capture} (Ausgabe abfangen)</a></span></dt>
<dt><span class="sect1"><a href="language.function.config.load.tpl">{config_load} (Konfiguration laden)</a></span></dt>
<dt><span class="sect1"><a href="language.function.foreach.tpl">{foreach}, {foreachelse}</a></span></dt>
<dd><dl>
<dt><span class="sect2"><a href="language.function.foreach.tpl#foreach.property.iteration">iteration</a></span></dt>
<dt><span class="sect2"><a href="language.function.foreach.tpl#foreach.property.first">first</a></span></dt>
<dt><span class="sect2"><a href="language.function.foreach.tpl#foreach.property.last">last</a></span></dt>
<dt><span class="sect2"><a href="language.function.foreach.tpl#foreach.property.show">show</a></span></dt>
<dt><span class="sect2"><a href="language.function.foreach.tpl#foreach.property.total">total</a></span></dt>
</dl></dd>
<dt><span class="sect1"><a href="language.function.if.tpl">{if},{elseif},{else}</a></span></dt>
<dt><span class="sect1"><a href="language.function.include.tpl">include (einbinden)</a></span></dt>
<dt><span class="sect1"><a href="language.function.include.php.tpl">include_php (PHP-Code einbinden)</a></span></dt>
<dt><span class="sect1"><a href="language.function.insert.tpl">insert (einfügen)</a></span></dt>
<dt><span class="sect1"><a href="language.function.ldelim.tpl">ldelim,rdelim (Ausgabe der Trennzeichen)</a></span></dt>
<dt><span class="sect1"><a href="language.function.literal.tpl">literal</a></span></dt>
<dt><span class="sect1"><a href="language.function.php.tpl">php</a></span></dt>
<dt><span class="sect1"><a href="language.function.section.tpl">section,sectionelse</a></span></dt>
<dd><dl>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.index">index</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.index.prev">index_prev</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.index.next">index_next</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.first">first</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.last">last</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.rownum">rownum</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.loop">loop</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.show">show</a></span></dt>
<dt><span class="sect2"><a href="language.function.section.tpl#section.property.total">total</a></span></dt>
</dl></dd>
<dt><span class="sect1"><a href="language.function.strip.tpl">strip</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="language.custom.functions.tpl">8. Eigene Funktionen</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="language.custom.functions.tpl#language.function.assign">{assign} (zuweisen)</a></span></dt>
<dt><span class="sect1"><a href="language.function.counter.tpl">{counter} (Zähler)</a></span></dt>
<dt><span class="sect1"><a href="language.function.cycle.tpl">{cycle} (Zyklus)</a></span></dt>
<dt><span class="sect1"><a href="language.function.debug.tpl">{debug}</a></span></dt>
<dt><span class="sect1"><a href="language.function.eval.tpl">{eval} (auswerten)</a></span></dt>
<dt><span class="sect1"><a href="language.function.fetch.tpl">{fetch}</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.checkboxes.tpl">{html_checkboxes} (Ausgabe von HTML-Checkbox Tag)</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.image.tpl">html_image (Ausgabe von HTML-IMG Tag)</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.options.tpl">html_options (Ausgabe von HTML-Options)</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.radios.tpl">html_radios (Ausgabe von HTML-RADIO Tags)</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.select.date.tpl">html_select_date (Ausgabe von Daten als HTML-'options')</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.select.time.tpl">html_select_time (Ausgabe von Zeiten als HTML-'options')</a></span></dt>
<dt><span class="sect1"><a href="language.function.html.table.tpl">html_table (Ausgabe von HTML-TABLE Tag)</a></span></dt>
<dt><span class="sect1"><a href="language.function.mailto.tpl">mailto</a></span></dt>
<dt><span class="sect1"><a href="language.function.math.tpl">math (Mathematik)</a></span></dt>
<dt><span class="sect1"><a href="language.function.popup.tpl">popup (Popup-Inhalt definieren)</a></span></dt>
<dt><span class="sect1"><a href="language.function.popup.init.tpl">popup_init (Popup Initialisieren)</a></span></dt>
<dt><span class="sect1"><a href="language.function.textformat.tpl">textformat (Textformatierung)</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="config.files.tpl">9. Konfigurationsdateien</a></span></dt>
<dt><span class="chapter"><a href="chapter.debugging.console.tpl">10. Debugging Konsole</a></span></dt>
</dl></dd>
<dt><span class="part"><a href="smarty.for.programmers.tpl">III. Smarty für Programmierer</a></span></dt>
<dd><dl>
<dt><span class="chapter"><a href="smarty.constants.tpl">11. Konstanten</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="smarty.constants.tpl#constant.smarty.dir">SMARTY_DIR</a></span></dt>
<dt><span class="sect1"><a href="constant.smarty.core.dir.tpl">SMARTY_CORE_DIR</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="api.variables.tpl">12. Smarty Klassenvariablen (Objekteigenschaften)</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="api.variables.tpl#variable.template.dir">$template_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.compile.dir.tpl">$compile_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.config.dir.tpl">$config_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.plugins.dir.tpl">$plugins_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.debugging.tpl">$debugging</a></span></dt>
<dt><span class="sect1"><a href="variable.debug.tpl.tpl">$debug_tpl</a></span></dt>
<dt><span class="sect1"><a href="variable.debugging.ctrl.tpl">$debugging_ctrl</a></span></dt>
<dt><span class="sect1"><a href="variable.autoload.filters.tpl">$autoload_filters</a></span></dt>
<dt><span class="sect1"><a href="variable.compile.check.tpl">$compile_check</a></span></dt>
<dt><span class="sect1"><a href="variable.force.compile.tpl">$force_compile</a></span></dt>
<dt><span class="sect1"><a href="variable.caching.tpl">$caching</a></span></dt>
<dt><span class="sect1"><a href="variable.cache.dir.tpl">$cache_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.cache.lifetime.tpl">$cache_lifetime</a></span></dt>
<dt><span class="sect1"><a href="variable.cache.handler.func.tpl">$cache_handler_func</a></span></dt>
<dt><span class="sect1"><a href="variable.cache.modified.check.tpl">$cache_modified_check</a></span></dt>
<dt><span class="sect1"><a href="variable.config.overwrite.tpl">$config_overwrite</a></span></dt>
<dt><span class="sect1"><a href="variable.config.booleanize.tpl">$config_booleanize</a></span></dt>
<dt><span class="sect1"><a href="variable.config.read.hidden.tpl">$config_read_hidden</a></span></dt>
<dt><span class="sect1"><a href="variable.config.fix.newlines.tpl">$config_fix_newlines</a></span></dt>
<dt><span class="sect1"><a href="variable.default.template.handler.func.tpl">$default_template_handler_func</a></span></dt>
<dt><span class="sect1"><a href="variable.php.handling.tpl">$php_handling</a></span></dt>
<dt><span class="sect1"><a href="variable.security.tpl">$security</a></span></dt>
<dt><span class="sect1"><a href="variable.secure.dir.tpl">$secure_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.security.settings.tpl">$security_settings</a></span></dt>
<dt><span class="sect1"><a href="variable.trusted.dir.tpl">$trusted_dir</a></span></dt>
<dt><span class="sect1"><a href="variable.left.delimiter.tpl">$left_delimiter</a></span></dt>
<dt><span class="sect1"><a href="variable.right.delimiter.tpl">$right_delimiter</a></span></dt>
<dt><span class="sect1"><a href="variable.compiler.class.tpl">$compiler_class</a></span></dt>
<dt><span class="sect1"><a href="variable.request.vars.order.tpl">$request_vars_order</a></span></dt>
<dt><span class="sect1"><a href="variable.request.use.auto.globals.tpl">$request_use_auto_globals</a></span></dt>
<dt><span class="sect1"><a href="variable.error.reporting.tpl">$error_reporting</a></span></dt>
<dt><span class="sect1"><a href="variable.compile.id.tpl">$compile_id</a></span></dt>
<dt><span class="sect1"><a href="variable.use.sub.dirs.tpl">$use_sub_dirs</a></span></dt>
<dt><span class="sect1"><a href="variable.default.modifiers.tpl">$default_modifiers</a></span></dt>
<dt><span class="sect1"><a href="variable.default.resource.type.tpl">$default_resource_type</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="api.functions.tpl">13. Methoden der Klasse Smarty</a></span></dt>
<dd><dl>
<dt>
<span class="refentrytitle"><a href="api.append.tpl">append (anhängen)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.append.by.ref.tpl">append_by_ref (Referenz anhängen)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.assign.tpl">assign</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.assign.by.ref.tpl">assign_by_ref (Referenz zuweisen)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.clear.all.assign.tpl">clear_all_assign (alle Zuweisungen löschen)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.clear.all.cache.tpl">clear_all_cache (Cache vollständig leeren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.clear.assign.tpl">clear_assign (lösche Zuweisung)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.clear.cache.tpl">clear_cache (leere Cache)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.clear.compiled.tpl.tpl">clear_compiled_tpl (kompiliertes Template löschen)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.clear.config.tpl">clear_config</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.config.load.tpl">config_load</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.display.tpl">display (ausgeben)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.fetch.tpl">fetch</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.get.config.vars.tpl">get_config_vars</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.get.registered.object.tpl">get_registered_object</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.get.template.vars.tpl">get_template_vars (Template-Variablen extrahieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.is.cached.tpl">is_cached (gecachte Version existiert)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.load.filter.tpl">load_filter</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.block.tpl">register_block (Block-Funktion registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.compiler.function.tpl">register_compiler_function (Compiler-Funktion registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.function.tpl">register_function</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.modifier.tpl">register_modifier (Modifikator-Plugin registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.object.tpl">register_object</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.outputfilter.tpl">register_outputfilter (Ausgabefilter registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.postfilter.tpl">register_postfilter ('post'-Filter registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.prefilter.tpl">register_prefilter ('pre'-Filter registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.register.resource.tpl">register_resource (Ressource registrieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.trigger.error.tpl">trigger_error (Fehler auslösen)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.template.exists.tpl">template_exists (Template existiert)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.block.tpl">unregister_block (Block-Funktion deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.compiler.function.tpl">unregister_compiler_function (Compiler-Funktion deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.function.tpl">unregister_function (Template-Funktion deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.modifier.tpl">unregister_modifier (Modifikator deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.object.tpl">unregister_object</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.outputfilter.tpl">unregister_outputfilter (Ausgabefilter deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.postfilter.tpl">unregister_postfilter ('post'-Filter deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.prefilter.tpl">unregister_prefilter ('pre'-Filter deaktiviern)</a></span><span class="refpurpose"></span>
</dt>
<dt>
<span class="refentrytitle"><a href="api.unregister.resource.tpl">unregister_resource (Ressource deaktivieren)</a></span><span class="refpurpose"></span>
</dt>
</dl></dd>
<dt><span class="chapter"><a href="caching.tpl">14. Caching</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="caching.tpl#caching.setting.up">Caching einrichten</a></span></dt>
<dt><span class="sect1"><a href="caching.multiple.caches.tpl">Multiple Caches für eine Seite</a></span></dt>
<dt><span class="sect1"><a href="caching.groups.tpl">Cache-Gruppen</a></span></dt>
<dt><span class="sect1"><a href="caching.cacheable.tpl">Die Ausgabe von cachebaren Plugins Kontrollieren</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="advanced.features.tpl">15. Advanced Features</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="advanced.features.tpl#advanced.features.objects">Objekte</a></span></dt>
<dt><span class="sect1"><a href="advanced.features.prefilters.tpl">Prefilter</a></span></dt>
<dt><span class="sect1"><a href="advanced.features.postfilters.tpl">Postfilter</a></span></dt>
<dt><span class="sect1"><a href="advanced.features.outputfilters.tpl">Ausgabefilter</a></span></dt>
<dt><span class="sect1"><a href="section.template.cache.handler.func.tpl">Cache Handler Funktion</a></span></dt>
<dt><span class="sect1"><a href="template.resources.tpl">Ressourcen</a></span></dt>
<dd><dl>
<dt><span class="sect2"><a href="template.resources.tpl#templates.from.template.dir">Templates aus dem '$template_dir'</a></span></dt>
<dt><span class="sect2"><a href="template.resources.tpl#templates.from.any.dir">Templates aus beliebigen Verzeichnissen</a></span></dt>
<dt><span class="sect2"><a href="template.resources.tpl#templates.from.elsewhere">Templates aus anderen Quellen</a></span></dt>
<dt><span class="sect2"><a href="template.resources.tpl#default.template.handler.function">Standard Template-Handler</a></span></dt>
</dl></dd>
</dl></dd>
<dt><span class="chapter"><a href="plugins.tpl">16. Smarty durch Plugins erweitern</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="plugins.tpl#plugins.howto">Wie Plugins funktionieren</a></span></dt>
<dt><span class="sect1"><a href="plugins.naming.conventions.tpl">Namenskonvention</a></span></dt>
<dt><span class="sect1"><a href="plugins.writing.tpl">Plugins schreiben</a></span></dt>
<dt><span class="sect1"><a href="plugins.functions.tpl">Template-Funktionen</a></span></dt>
<dt><span class="sect1"><a href="plugins.modifiers.tpl">Variablen-Modifikatoren</a></span></dt>
<dt><span class="sect1"><a href="plugins.block.functions.tpl">Block-Funktionen</a></span></dt>
<dt><span class="sect1"><a href="plugins.compiler.functions.tpl">Compiler-Funktionen</a></span></dt>
<dt><span class="sect1"><a href="plugins.prefilters.postfilters.tpl">'pre'/'post'-Filter</a></span></dt>
<dt><span class="sect1"><a href="plugins.outputfilters.tpl">Ausgabefilter</a></span></dt>
<dt><span class="sect1"><a href="plugins.resources.tpl">Ressourcen</a></span></dt>
<dt><span class="sect1"><a href="plugins.inserts.tpl">Inserts</a></span></dt>
</dl></dd>
</dl></dd>
<dt><span class="part"><a href="appendixes.tpl">IV. Anhänge</a></span></dt>
<dd><dl>
<dt><span class="chapter"><a href="troubleshooting.tpl">17. Problemlösung</a></span></dt>
<dd><dl><dt><span class="sect1"><a href="troubleshooting.tpl#smarty.php.errors">Smarty/PHP Fehler</a></span></dt></dl></dd>
<dt><span class="chapter"><a href="tips.tpl">18. Tips &amp; Tricks</a></span></dt>
<dd><dl>
<dt><span class="sect1"><a href="tips.tpl#tips.blank.var.handling">Handhabung unangewiesener Variablen</a></span></dt>
<dt><span class="sect1"><a href="tips.default.var.handling.tpl">Handhabung von Standardwerten</a></span></dt>
<dt><span class="sect1"><a href="tips.passing.vars.tpl">Variablen an eingebundene Templates weitergeben</a></span></dt>
<dt><span class="sect1"><a href="tips.dates.tpl">Zeitangaben</a></span></dt>
<dt><span class="sect1"><a href="tips.wap.tpl">WAP/WML</a></span></dt>
<dt><span class="sect1"><a href="tips.componentized.templates.tpl">Template/Script Komponenten</a></span></dt>
<dt><span class="sect1"><a href="tips.obfuscating.email.tpl">Verschleierung von E-mail Adressen</a></span></dt>
</dl></dd>
<dt><span class="chapter"><a href="resources.tpl">19. Weiterführende Informationen</a></span></dt>
<dt><span class="chapter"><a href="bugs.tpl">20. BUGS</a></span></dt>
</dl></dd>
</dl>
</div>
<div class="list-of-examples">
<p><b>List of Examples</b></p>
<dl>
<dt>2.1. <a href="installing.smarty.basic.tpl#id2858236">Benötigte Smarty-Library Dateien</a>
</dt>
<dt>2.2. <a href="installing.smarty.basic.tpl#id2858288">Smarty Instanz erstellen:</a>
</dt>
<dt>2.3. <a href="installing.smarty.basic.tpl#id2858315">Manuelles setzen der SMARTY_DIR-Konstanten</a>
</dt>
<dt>2.4. <a href="installing.smarty.basic.tpl#id2858329">SMARTY_DIR manuell setzen</a>
</dt>
<dt>2.5. <a href="installing.smarty.basic.tpl#id2858359">Absoluter Pfad übergeben</a>
</dt>
<dt>2.6. <a href="installing.smarty.basic.tpl#id2858381">Library Verzeichnis dem Include-Pfad hinzufügen</a>
</dt>
<dt>2.7. <a href="installing.smarty.basic.tpl#id2858396">Library Verzeichnis dem Include-Pfad mit
    ini_set() hinzufügen</a>
</dt>
<dt>2.8. <a href="installing.smarty.basic.tpl#id2858586">Beispiel der Dateistruktur</a>
</dt>
<dt>2.9. <a href="installing.smarty.basic.tpl#id2858647">Dateirechte einrichten</a>
</dt>
<dt>2.10. <a href="installing.smarty.basic.tpl#id2858709">Editieren von /web/www.example.com/smarty/guestbook/templates/index.tpl</a>
</dt>
<dt>2.11. <a href="installing.smarty.basic.tpl#id2858771">Editieren von /web/www.example.com/docs/guestbook/index.php</a>
</dt>
<dt>2.12. <a href="installing.smarty.extended.tpl#id2858873">Editieren von /php/includes/guestbook/setup.php</a>
</dt>
<dt>2.13. <a href="installing.smarty.extended.tpl#id2857766">Editieren von /web/www.example.com/docs/guestbook/index.php</a>
</dt>
<dt>3.1. <a href="language.basic.syntax.tpl#id2859564">Kommentare</a>
</dt>
<dt>3.2. <a href="language.syntax.variables.tpl#id2860243">Variablen</a>
</dt>
<dt>3.3. <a href="language.syntax.functions.tpl#id2860910">Funktions-Syntax</a>
</dt>
<dt>3.4. <a href="language.syntax.attributes.tpl#id2860623">Funktions-Parameter Syntax</a>
</dt>
<dt>3.5. <a href="language.syntax.quotes.tpl#id2860346">Syntax von eingebetteten Anfürungszeichen</a>
</dt>
<dt>3.6. <a href="language.math.tpl#id2860528">Mathematik Beispiele</a>
</dt>
<dt>3.7. <a href="language.escaping.tpl#id2861640">Beispiel wie die Trennzeichen angepasst werden</a>
</dt>
<dt>4.1. <a href="language.variables.tpl#id2862385">zugewiesene Variablen</a>
</dt>
<dt>4.2. <a href="language.variables.tpl#id2863073">Zugriff auf Variablen eines assoziativen Arrays</a>
</dt>
<dt>4.3. <a href="language.variables.tpl#id2863143">Zugriff über den Array Index</a>
</dt>
<dt>4.4. <a href="language.variables.tpl#id2863209">Zugriff auf Objekt-Attribute</a>
</dt>
<dt>4.5. <a href="language.config.variables.tpl#id2862654">Konfigurationsvariablen</a>
</dt>
<dt>4.6. <a href="language.variables.smarty.tpl#id2862755">Ausgabe der Requestvariablen (Anfragevariablen)</a>
</dt>
<dt>4.7. <a href="language.variables.smarty.tpl#id2863763">Verwendung von {$smarty.now}</a>
</dt>
<dt>4.8. <a href="language.variables.smarty.tpl#id2863799">Benutzung von {$smarty.const}</a>
</dt>
<dt>5.1. <a href="language.modifiers.tpl#id2862208">Modifikator Beispiel</a>
</dt>
<dt>5.2. <a href="language.modifiers.tpl#id2865334">capitalize (in Grossbuchstaben schreiben)</a>
</dt>
<dt>5.3. <a href="language.modifier.cat.tpl#id2865706">cat</a>
</dt>
<dt>5.4. <a href="language.modifier.count.characters.tpl#id2865142">count_characters (Buchstaben zählen)</a>
</dt>
<dt>5.5. <a href="language.modifier.count.paragraphs.tpl#id2865542">count_paragraphs (Paragrafen zählen)</a>
</dt>
<dt>5.6. <a href="language.modifier.count.sentences.tpl#id2865633">count_sentences (Sätze zählen)</a>
</dt>
<dt>5.7. <a href="language.modifier.count.words.tpl#id2865795">count_words (Wörter zählen)</a>
</dt>
<dt>5.8. <a href="language.modifier.date.format.tpl#id2865963">date_format (Datums Formatierung)</a>
</dt>
<dt>5.9. <a href="language.modifier.date.format.tpl#id2865989">'date_format' Konvertierungs Spezifikation</a>
</dt>
<dt>5.10. <a href="language.modifier.default.tpl#id2867088">default (Standardwert)</a>
</dt>
<dt>5.11. <a href="language.modifier.escape.tpl#id2866614">escape (Maskieren)</a>
</dt>
<dt>5.12. <a href="language.modifier.indent.tpl#id2867843">indent (Einrücken)</a>
</dt>
<dt>5.13. <a href="language.modifier.lower.tpl#id2867300">lower (in Kleinbuchstaben schreiben)</a>
</dt>
<dt>5.14. <a href="language.modifier.nl2br.tpl#id2867397">nl2br</a>
</dt>
<dt>5.15. <a href="language.modifier.regex.replace.tpl#id2867694">regex_replace (Ersetzen mit regulären Ausdrücken)</a>
</dt>
<dt>5.16. <a href="language.modifier.replace.tpl#id2868835">replace (Ersetzen)</a>
</dt>
<dt>5.17. <a href="language.modifier.spacify.tpl#id2868385">spacify (Zeichenkette splitten)</a>
</dt>
<dt>5.18. <a href="language.modifier.string.format.tpl#id2868787">string_format (Zeichenkette formatieren)</a>
</dt>
<dt>5.19. <a href="language.modifier.strip.tpl#id2869018">strip (Zeichenkette strippen)</a>
</dt>
<dt>5.20. <a href="language.modifier.strip.tags.tpl#id2869470">strip_tags</a>
</dt>
<dt>5.21. <a href="language.modifier.truncate.tpl#id2870320">truncate (kürzen)</a>
</dt>
<dt>5.22. <a href="language.modifier.upper.tpl#id2869735">upper (in Grossbuchstaben umwandeln)</a>
</dt>
<dt>5.23. <a href="language.modifier.wordwrap.tpl#id2870804">wordwrap (Zeilenumbruch)</a>
</dt>
<dt>6.1. <a href="language.combining.modifiers.tpl#id2872798">Kombinieren von Modifikatoren</a>
</dt>
<dt>7.1. <a href="language.builtin.functions.tpl#id2874375">Template-Inhalte abfangen</a>
</dt>
<dt>7.2. <a href="language.builtin.functions.tpl#id2874387">Template-Inhalte abfangen</a>
</dt>
<dt>7.3. <a href="language.function.config.load.tpl#id2874942">Funktion {config_load}</a>
</dt>
<dt>7.4. <a href="language.function.config.load.tpl#id2875016">Funktion {config_load} mit Abschnitten</a>
</dt>
<dt>7.5. <a href="language.function.foreach.tpl#id2875691">{foreach} - item</a>
</dt>
<dt>7.6. <a href="language.function.foreach.tpl#id2875730">{foreach} - item und key</a>
</dt>
<dt>7.7. <a href="language.function.foreach.tpl#id2875749">{foreach} - Beispiel mit Datenbankzugriff (z.B. PEAR oder ADODB)</a>
</dt>
<dt>7.8. <a href="language.function.if.tpl#id2876809">if Anweisung</a>
</dt>
<dt>7.9. <a href="language.function.include.tpl#id2877591">function include (einbinden)</a>
</dt>
<dt>7.10. <a href="language.function.include.tpl#id2877607">include-Funktion und Variablen Übergabe</a>
</dt>
<dt>7.11. <a href="language.function.include.tpl#id2877658">Beispiele für Template-Ressourcen bei der 'include'-Funktion</a>
</dt>
<dt>7.12. <a href="language.function.include.php.tpl#id2878295">Funktion include_php</a>
</dt>
<dt>7.13. <a href="language.function.insert.tpl#id2878927">Funktion 'insert'</a>
</dt>
<dt>7.14. <a href="language.function.ldelim.tpl#id2878538">ldelim, rdelim</a>
</dt>
<dt>7.15. <a href="language.function.literal.tpl#id2878694">literal-Tags</a>
</dt>
<dt>7.16. <a href="language.function.php.tpl#id2879674">{php}-Tags</a>
</dt>
<dt>7.17. <a href="language.function.php.tpl#id2879592">{php} mit Verwendung von global</a>
</dt>
<dt>7.18. <a href="language.function.section.tpl#id2880336">section</a>
</dt>
<dt>7.19. <a href="language.function.section.tpl#id2880410">section loop Variable</a>
</dt>
<dt>7.20. <a href="language.function.section.tpl#id2880432">section names</a>
</dt>
<dt>7.21. <a href="language.function.section.tpl#id2880466">nested sections (verschachtelte 'sections')</a>
</dt>
<dt>7.22. <a href="language.function.section.tpl#id2880530">sections und assoziative Arrays</a>
</dt>
<dt>7.23. <a href="language.function.section.tpl#id2879385">sectionelse</a>
</dt>
<dt>7.24. <a href="language.function.section.tpl#id2880864">'section'-Eigenschaft 'index'</a>
</dt>
<dt>7.25. <a href="language.function.section.tpl#id2880908">section'-Eigenschaft 'index_prev'</a>
</dt>
<dt>7.26. <a href="language.function.section.tpl#id2880969">section'-Eigenschaft 'index_next'</a>
</dt>
<dt>7.27. <a href="language.function.section.tpl#id2881075">'section'-Eigenschaft 'first'</a>
</dt>
<dt>7.28. <a href="language.function.section.tpl#id2881125">'section'-Eigenschaft 'last'</a>
</dt>
<dt>7.29. <a href="language.function.section.tpl#id2881178">'section'-Eigenschaft 'rownum'</a>
</dt>
<dt>7.30. <a href="language.function.section.tpl#id2881216">'section'-Eigenschaft 'loop'</a>
</dt>
<dt>7.31. <a href="language.function.section.tpl#id2881268">'section'-Eigenschaft 'show'</a>
</dt>
<dt>7.32. <a href="language.function.section.tpl#id2881319">'section'-Eigenschaft 'total'</a>
</dt>
<dt>7.33. <a href="language.function.strip.tpl#id2882316">strip tags</a>
</dt>
<dt>8.1. <a href="language.custom.functions.tpl#id2886735">{assign} (zuweisen)</a>
</dt>
<dt>8.2. <a href="language.custom.functions.tpl#id2886763">Zugriff auf mit {assign} zugwiesene Variablen von PHP aus.</a>
</dt>
<dt>8.3. <a href="language.function.counter.tpl#id2887496">{counter} (Zähler)</a>
</dt>
<dt>8.4. <a href="language.function.cycle.tpl#id2888106">{cycle} (Zyklus)</a>
</dt>
<dt>8.5. <a href="language.function.eval.tpl#id2888957">eval (auswerten)</a>
</dt>
<dt>8.6. <a href="language.function.fetch.tpl#id2889448">fetch</a>
</dt>
<dt>8.7. <a href="language.function.html.checkboxes.tpl#id2890030">{html_checkboxes}</a>
</dt>
<dt>8.8. <a href="language.function.html.image.tpl#id2890843">html_image</a>
</dt>
<dt>8.9. <a href="language.function.html.options.tpl#id2891509">html_options</a>
</dt>
<dt>8.10. <a href="language.function.html.options.tpl#id2891640">{html_options} - Beispiel mit Datenbank (z.B. PEAR oder ADODB):</a>
</dt>
<dt>8.11. <a href="language.function.html.radios.tpl#id2892357">html_radios</a>
</dt>
<dt>8.12. <a href="language.function.html.radios.tpl#id2892392">{html_radios} : Example 2</a>
</dt>
<dt>8.13. <a href="language.function.html.radios.tpl#id2892439">{html_radios}-Datenbankbeispiel (z.B. mit PEAR oder ADODB):</a>
</dt>
<dt>8.14. <a href="language.function.html.select.date.tpl#id2893561">html_select_date</a>
</dt>
<dt>8.15. <a href="language.function.html.select.date.tpl#id2893600">html_select_date</a>
</dt>
<dt>8.16. <a href="language.function.html.select.time.tpl#id2894894">html_select_time</a>
</dt>
<dt>8.17. <a href="language.function.html.table.tpl#id2895990">html_table</a>
</dt>
<dt>8.18. <a href="language.function.mailto.tpl#id2896742">mailto</a>
</dt>
<dt>8.19. <a href="language.function.math.tpl#id2897421">math (Mathematik)</a>
</dt>
<dt>8.20. <a href="language.function.popup.tpl#id2898919">popup</a>
</dt>
<dt>8.21. <a href="language.function.popup.init.tpl#id2899775">popup_init</a>
</dt>
<dt>8.22. <a href="language.function.textformat.tpl#id2900768">textformat (Text Formatierung)</a>
</dt>
<dt>9.1. <a href="config.files.tpl#id2907539">Beispiel der Konfigurationsdatei-Syntax</a>
</dt>
<dt>11.1. <a href="smarty.constants.tpl#id2907819">SMARTY_DIR</a>
</dt>
<dt>11.2. <a href="constant.smarty.core.dir.tpl#id2907892">SMARTY_CORE_DIR</a>
</dt>
<dt>12.1. <a href="variable.plugins.dir.tpl#id2910065">Ein lokales Plugin-Verzeichnis hinzufügen</a>
</dt>
<dt>12.2. <a href="variable.plugins.dir.tpl#id2910078">Mehrere Verzeichnisse im $plugins_dir</a>
</dt>
<dt>12.3. <a href="variable.config.overwrite.tpl#id2911771">Array von Konfigurationswerten</a>
</dt>
<dt>12.4. <a href="variable.compile.id.tpl#id2914641">$compile_id in einer Virtual Host Umgebung</a>
</dt>
<dt>13.1. <a href="api.append.tpl#id2917944">append (anhängen)</a>
</dt>
<dt>13.2. <a href="api.append.by.ref.tpl#id2917874">append_by_ref (via Referenz anhängen)</a>
</dt>
<dt>13.3. <a href="api.assign.tpl#id2917690">assign</a>
</dt>
<dt>13.4. <a href="api.assign.by.ref.tpl#id2918760">assign_by_ref (via Referenz zuweisen)</a>
</dt>
<dt>13.5. <a href="api.clear.all.assign.tpl#id2918246">clear_all_assign (alle Zuweisungen löschen)</a>
</dt>
<dt>13.6. <a href="api.clear.all.cache.tpl#id2918640">clear_all_cache (Cache vollständig leeren)</a>
</dt>
<dt>13.7. <a href="api.clear.assign.tpl#id2919091">clear_assign (lösche Zuweisung)</a>
</dt>
<dt>13.8. <a href="api.clear.cache.tpl#id2919504">clear_cache (Cache leeren)</a>
</dt>
<dt>13.9. <a href="api.clear.compiled.tpl.tpl#id2918885">clear_compiled_tpl (kompiliertes Template löschen)</a>
</dt>
<dt>13.10. <a href="api.clear.config.tpl#id2919965">clear_config</a>
</dt>
<dt>13.11. <a href="api.config.load.tpl#id2920193">config_load</a>
</dt>
<dt>13.12. <a href="api.display.tpl#id2919908">display (ausgeben)</a>
</dt>
<dt>13.13. <a href="api.display.tpl#id2920527">Beispiele von Template-Ressourcen für 'display()'</a>
</dt>
<dt>13.14. <a href="api.fetch.tpl#id2919824">fetch</a>
</dt>
<dt>13.15. <a href="api.get.config.vars.tpl#id2920416">get_config_vars</a>
</dt>
<dt>13.16. <a href="api.get.registered.object.tpl#id2920597">get_registered_object</a>
</dt>
<dt>13.17. <a href="api.get.template.vars.tpl#id2920712">get_template_vars (Template-Variablen extrahieren)</a>
</dt>
<dt>13.18. <a href="api.is.cached.tpl#id2921688">is_cached</a>
</dt>
<dt>13.19. <a href="api.is.cached.tpl#id2921711">'is_cached' bei mehreren Template-Caches</a>
</dt>
<dt>13.20. <a href="api.load.filter.tpl#id2921289">Filter-Plugins laden</a>
</dt>
<dt>13.21. <a href="api.register.block.tpl#id2922364">register_block (Block-Funktion registrieren)</a>
</dt>
<dt>13.22. <a href="api.register.function.tpl#id2923151">register_function (Funktion registrieren)</a>
</dt>
<dt>13.23. <a href="api.register.modifier.tpl#id2923518">register_modifier (Modifikator-Plugin registrieren)</a>
</dt>
<dt>13.24. <a href="api.register.resource.tpl#id2924434">register_resource (Ressource registrieren)</a>
</dt>
<dt>13.25. <a href="api.unregister.function.tpl#id2924764">unregister_function</a>
</dt>
<dt>13.26. <a href="api.unregister.modifier.tpl#id2924867">unregister_modifier</a>
</dt>
<dt>13.27. <a href="api.unregister.resource.tpl#id2925911">unregister_resource (Ressource deaktivieren)</a>
</dt>
<dt>14.1. <a href="caching.tpl#id2930588">Caching einschalten</a>
</dt>
<dt>14.2. <a href="caching.tpl#id2931295">'$cache_lifetime' pro Cache einstellen</a>
</dt>
<dt>14.3. <a href="caching.tpl#id2931364">'$compile_check' einschalten</a>
</dt>
<dt>14.4. <a href="caching.tpl#id2931432">is_cached() verwenden</a>
</dt>
<dt>14.5. <a href="caching.tpl#id2931519">Cache leeren</a>
</dt>
<dt>14.6. <a href="caching.multiple.caches.tpl#id2930803">'display()' eine 'cache_id' übergeben</a>
</dt>
<dt>14.7. <a href="caching.multiple.caches.tpl#id2932004">'is_cached()' mit 'cache_id' aufrufen</a>
</dt>
<dt>14.8. <a href="caching.multiple.caches.tpl#id2932044">Cache einer bestimmten 'cache_id' leeren</a>
</dt>
<dt>14.9. <a href="caching.groups.tpl#id2931601">'cache_id'-Gruppen</a>
</dt>
<dt>14.10. <a href="caching.cacheable.tpl#id2932568">Verhindern des Caching der Ausgabe eines Plugins</a>
</dt>
<dt>14.11. <a href="caching.cacheable.tpl#id2932618">Verhindern dass Template Blöcke gecached werden</a>
</dt>
<dt>15.1. <a href="advanced.features.tpl#id2933915">registierte oder zugewiesene Objekte verwenden</a>
</dt>
<dt>15.2. <a href="advanced.features.prefilters.tpl#id2933451">Template Prefilter verwenden</a>
</dt>
<dt>15.3. <a href="advanced.features.postfilters.tpl#id2933600">Template Postfilter verwenden</a>
</dt>
<dt>15.4. <a href="advanced.features.outputfilters.tpl#id2934728">Ausgabefilter verwenden</a>
</dt>
<dt>15.5. <a href="section.template.cache.handler.func.tpl#id2934924">Beispiel mit einer MySQL Datenbank als Datenquelle</a>
</dt>
<dt>15.6. <a href="template.resources.tpl#id2935226">Templates aus '$template_dir' verwenden</a>
</dt>
<dt>15.7. <a href="template.resources.tpl#id2935261">Templates aus beliebigen Verzeichnissen benutzen</a>
</dt>
<dt>15.8. <a href="template.resources.tpl#id2935296">Templates aus Windows Dateipfaden verwenden</a>
</dt>
<dt>15.9. <a href="template.resources.tpl#id2935363">Eigene Quellen verwenden</a>
</dt>
<dt>15.10. <a href="template.resources.tpl#id2935394">Standard Template-Handler verwenden</a>
</dt>
<dt>16.1. <a href="plugins.functions.tpl#id2937576">Funktionsplugin mit Ausgabe</a>
</dt>
<dt>16.2. <a href="plugins.functions.tpl#id2937624">Funktionsplugin ohne Ausgabe</a>
</dt>
<dt>16.3. <a href="plugins.modifiers.tpl#id2937520">Einfaches Modifikator-Plugin</a>
</dt>
<dt>16.4. <a href="plugins.modifiers.tpl#id2937981">Komplexes Modifikator-Plugin</a>
</dt>
<dt>16.5. <a href="plugins.block.functions.tpl#id2938412">Block-Funktionen</a>
</dt>
<dt>16.6. <a href="plugins.compiler.functions.tpl#id2938780">Einfache Compiler-Funktionen</a>
</dt>
<dt>16.7. <a href="plugins.prefilters.postfilters.tpl#id2938279">'pre'-Filter Plugin</a>
</dt>
<dt>16.8. <a href="plugins.prefilters.postfilters.tpl#id2938328">'post'-Filter Plugin</a>
</dt>
<dt>16.9. <a href="plugins.outputfilters.tpl#id2938603">Ausgabefilter Plugin</a>
</dt>
<dt>16.10. <a href="plugins.resources.tpl#id2939824">Ressourcen Plugin</a>
</dt>
<dt>16.11. <a href="plugins.inserts.tpl#id2940323">Insert-Plugin</a>
</dt>
<dt>17.1. <a href="troubleshooting.tpl#id2941221">Smarty Fehler</a>
</dt>
<dt>17.2. <a href="troubleshooting.tpl#id2941293">PHP Syntaxfehler</a>
</dt>
<dt>18.1. <a href="tips.tpl#id2941455">"&amp;nbsp;" ausgeben wenn eine Variable nicht zugewiesen ist</a>
</dt>
<dt>18.2. <a href="tips.default.var.handling.tpl#id2942141">Zuweisen des Standardwertes einer Variable</a>
</dt>
<dt>18.3. <a href="tips.passing.vars.tpl#id2942220">Die Titel-Variable dem Header-Template zuweisen</a>
</dt>
<dt>18.4. <a href="tips.dates.tpl#id2942363">Die Verwendung von date_format</a>
</dt>
<dt>18.5. <a href="tips.dates.tpl#id2942429">Formular Datum-Elemente nach Timestamp konvertieren</a>
</dt>
<dt>18.6. <a href="tips.wap.tpl#id2942525">Die verwendung von 'insert' um einen WML Content-Type header zu senden</a>
</dt>
<dt>18.7. <a href="tips.componentized.templates.tpl#id2941987">Template/Script Komponenten</a>
</dt>
<dt>18.8. <a href="tips.obfuscating.email.tpl#id2942880">Beispiel von verschleierung von E-mail Adressen</a>
</dt>
</dl>
</div>
</div>
<div class="navfooter">
<hr>
<table width="100%" summary="Navigation footer">
<tr>
<td width="40%" align="left"> </td>
<td width="20%" align="center"> </td>
<td width="40%" align="right"> <a accesskey="n" href="preface.tpl">Next</a>
</td>
</tr>
<tr>
<td width="40%" align="left" valign="top"> </td>
<td width="20%" align="center"> </td>
<td width="40%" align="right" valign="top"> Vorwort</td>
</tr>
</table>
</div>

		
		  <div class="comments">
      
                  <div id="commentHeader"><strong>Comments</strong></div>
          <div class="commentInfo">
          
                                <div class="commentWrapperEven">
              <div class="commentBody"><emphasis>No comments for this page.</emphasis></div>
            </div>          
                    </div>
          <div id="commentFormWrapper">
            <div id="commentFormHeader"><strong>Post a Comment</strong></div>
            <div id="commentFormElements">
            <form id="commentForm" method="post" action="/comments/post">
              <div id="commentText" style="font-style: italic; color:#f00">All comments are moderated. Support questions are ignored, use the <a href="/forums/">forums</a> instead.</div>
              <div id="commentFormAuthor">Author: <input id="commentFormAuthorText" type="text" name="author" size="40" value="anonymous" style="color: grey" onFocus="clearDefaultandCSS(this)"></div>
              <div id="commentFormEmail">Email: <input id="commentFormEmailText" type="text" name="email" size="30" value="your@email.com" style="color: grey" onFocus="clearDefaultandCSS(this)"> <span style="font-style: italic">(not shown)</span></div>
              
              <div id="commentFormChallenge">What is 15 plus 10? <input id="commentFormChallengeText" type="text" name="challenge" size="30" value="" style="color: grey"> <span style="font-style: italic">(Are you human?)</span></div>
              <input id="commentFormChallengeObf" type="hidden" name="obf" value="7fbeb1770366a68f725a70e036bb6e48">
              <div id="commentFormBody"><textarea id="commentFormBodyText" name="body" rows="8" cols="60"></textarea></div>
              <div id="commentFormSubmitButtons">
                <input id="commentFormPostButton" type="submit" value="Post Comment">
                <input id="commentFormPreviewButton" type="submit" value="Preview">
                <img id="commentBusyIcon" src="/images/busy.gif">
              </div>
              <input id="commentFormPageID" type="hidden" name="page_id" value="docsv2/de/index.tpl">
            </form>
            </div>
          </div>
          <div id="commentPreviewText">
          </div>
          <div id="commentPostedText">
          </div>
              
      </div>
      
      </div><!-- end colMain -->
      
      <div class="col colAdditional" align="left">
        <div id="skyscraper">
    		<script type="text/javascript"> 
    		  GA_googleFillSlot("smarty_right_skyscraper");
    		</script>
    		</div>
  		  <div class="box box1" id="smartySponsors">
          <h1 class="boxHead">Sponsors <a href="/sponsors">[info]</a></h1>
          <div class="boxContent">
						  <a href="http://www.webhost.uk.net/">UK Web Hosting</a> <span style="font-size: .7em">@webhost.uk.net</span><br>
						  <a href="http://www.rshosting.com/">Best Web Hosting</a> <span style="font-size: .7em">@rshosting.com</span><br>
						  <a href="http://www.webhostinguk.com/">Web Hosting UK</a> <span style="font-size: .7em">@webhostinguk.com</span><br>
						  <a href="http://www.infrenion.com/">Unlimited Web Hosting</a> <span style="font-size: .7em">@infrenion.com</span><br>
						  <a href="http://www.morphodo.com/de/app-entwicklung.html">App Entwicklung</a> <span style="font-size: .7em">@morphodo.com</span><br>
						  <a href="http://www.dhgate.com/">Buy from China</a> <span style="font-size: .7em">@dhgate.com</span><br>
						  <a href="http://www.fcinternetmarketing.com/">First Click Internet Marketing</a> <span style="font-size: .7em">@fcinternetmarketing.com</span><br>
						
			
          </div>
        </div>
  		  <div class="box box1" id="smartyAds">
  		    <h1 class="boxHead">Using Smarty</h1>
          <div class="boxContent">
			      <a href="http://www.dissertationteam.com/">dissertationteam.com</a><br>
			      <a href="http://jackpot4me.com/super-lig/galatasaray_istanbul.html">galatasaray</a><br>
			      <a href="http://www.dresses1000.com/">Quinceanera Dresses</a><br>
			      <a href="http://www.magicquinceanera.com/">quinceanera gowns</a><br>
			      <a href="http://www.besthochzeit.com/Bridesmaid-Dresses-c7/">Dresses for Bridesmaid</a><br>
			      <a href="http://www.dressfirst.fr/Robes-De-Bal-c18/">robes de bal</a><br>
			      <a href="http://skincareinsight.com/">skin care</a><br>
      			
      			
          </div>
  		    <h1 class="boxHead">I.T Certifications</h1>
          <div class="boxContent">
			      <a href="http://www.pass-guaranteed.com/">I.T Certification Exams</a><br>
			      <a href="http://www.firsttrycertify.com/">Certification Practice Tests</a><br>
          </div>
        </div>
      </div><!-- end colAdditional -->    
      <div class="clear"></div>
    </div><!-- end wrapper -->

  <div id="footer">
    <div id="colTopFooter">
      <a href="/credits" class="rightMar">credits</a>
      <a href="/copyright" accesskey="8" class="rightMar">copyright</a>
      <a href="/accessibility" accesskey="0">accessibility</a>
    </div>
    <p>Smarty Copyright &copy; 2002 &ndash; 2014 New Digital Group, Inc. All rights reserved.</p>
    <p>This page generated in 0.02255 secs with <a href="http://www.tinymvc.com/">TinyMVC</a> and Smarty 3.</p>
  </div>    
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"> 
</script> 
<script type="text/javascript"> 
_uacct = "UA-638513-4";
urchinTracker();
</script>
<script type="text/javascript">
    var GoSquared={};
    GoSquared.acct = "GSN-138769-Y";
    (function(w){
        function gs(){
            w._gstc_lt=+(new Date); var d=document;
            var g = d.createElement("script"); g.type = "text/javascript"; g.async = true; g.src = "//d1l6p2sc9645hc.cloudfront.net/tracker.js";
            var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(g, s);
        }
        w.addEventListener?w.addEventListener("load",gs,false):w.attachEvent("onload",gs);
    })(window);
</script>
</body>
</html>

