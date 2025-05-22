<div id="pswcag-accessibility-widget" class="pswcag-accessibility-widget">
  <a id="pswcag-open-settings" href="#pswcag-settings">
    <i class="material-icons">&#xe8b8;</i> 
  </a>
  <div id="pswcag-settings" class="pswcag-settings">
    <div class="pswcag-settings-label">
      <h2 class="pswcag-settings-title">Accessibility</h2>
      <button class="pswcag-settings-reset">Reset</button>
      <a href="#" id="pswcag-close-settings">
        <i class="material-icons">&#xe5cd;</i>  
      </a>
    </div>
    <div class="pswcag-tabs">
      <input type="radio" id="pswcag-tab1" name="pswcag-tab-group" checked>
      <div class="pswcag-option-label">
        <i class="pswcag-settings-icon material-symbols-outlined">visibility</i>
        <h3 class="pswcag-option-title">Wyświetlanie</h3>
      </div>
      
      {* Visibility Options *}
      {include file="module:pswcag/views/templates/partials/accessibility_widget/visibility_options.tpl"}

      <hr class="pswcag-tab-line">

      <input type="radio" id="pswcag-tab2" name="pswcag-tab-group">
      <div class="pswcag-option-label">
        <i class="pswcag-settings-icon material-symbols-outlined">description</i>
        <h3 class="pswcag-option-title">Tekst</h3>
      </div>

      {* Text Options *}
      {include file="module:pswcag/views/templates/partials/accessibility_widget/text_options.tpl"}

      <hr class="pswcag-tab-line">
        
      <input type="radio" id="pswcag-tab3" name="pswcag-tab-group">
      <div class="pswcag-option-label">
        <i class="pswcag-settings-icon material-symbols-outlined">design_services</i>
        <h3 class="pswcag-option-title">Narzędzia</h3>
      </div>

      {* Tools Options *}
      {include file="module:pswcag/views/templates/partials/accessibility_widget/tools_options.tpl"}
    </div>
    <noscript>
      <form action="/pswcag/accessibility" method="post">
        <input id="pswcag-submit-settings" type="submit" value="Save">
      </form>
    </noscript>
  </div>
</div>

{* WYSWIETLANIE *}

{* Wysoki kontrast*}
{* Tryb czarno-bialy *}
{* Zolty na czarnym *}
{* Podkreslanie linkow *}
{* Zatrzymanie animacji *}
{* Wyroznienie fokusa *}

{* TEKST *}

{* Zmiana rozmiaru czcionki *}
{* Zmiana wysokosci linii *}
{* Zmiana odstepu miedzy literami *}
{* Zmiana odstepu miedzy wyrazami *}

{* NARZEDZIA *}

{* Linia czytania *}
{* Skroty klawiszowe *}

{* FONTS *}
{* accessibility_new,visibility,contrast,link,pause_circle,my_location,arrow_selector_tool,description,format_size,menu,multiple_stop,straighten,keyboard,design_services *}
