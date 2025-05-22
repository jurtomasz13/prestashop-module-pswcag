{* Font size *}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="incrementer"
  name="font-size"
  icon="format_size"
  text="Rozmiar czcionki"
  min="70"
  max="200"
  step="10"
  value="100"}

{* Line height *}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="range"
  name="line-height"
  icon="menu"
  text="Wysokość linii"
  min="100"
  max="250"
  step="10"
  value="150"}

{* Letter spacing *}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="range"
  name="letter-spacing"
  icon="multiple_stop"
  text="Odstęp między literami"
  min="0"
  max="10"
  step=".5"
  value="0"}

{* Word spacing *}

{include file="module:pswcag/views/templates/partials/accessibility_widget/option_block.tpl"
  type="range"
  name="word-spacing"
  icon="multiple_stop"
  text="Odstęp między wyrazami"
  min="0"
  max="10"
  step=".5"
  value="0"}
