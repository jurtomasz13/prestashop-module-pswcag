{* Highlight line *}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="checkbox"
  name="highlight-line"
  icon="straighten"
  text="Linia czytania"}

{* Read selected text *}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="button"
  name="read-selected"
  icon="contrast"
  text="Odczytaj zaznaczony tekst"}

{* Keyboard Navigation *}

{capture name='keyboard_navigation'}
  Alt + Shift = Otwórz / Zamknij menu
{/capture}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="custom"
  name="keyboard-navigation"
  icon="keyboard"
  text="Skróty klawiszowe"
  custom=$smarty.capture.keyboard_navigation}
