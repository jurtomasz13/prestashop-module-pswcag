<label class="pswcag-input-label">
  <i class="pswcag-input-icon material-symbols-outlined">{$icon}</i>
  {* If type is button then text is rendered inside button, no need for this*}
  {if isset($type) && $type != 'button'}
    <span class="pswcag-input-text">
      {$text}
    </span>
  {/if}

  {if isset($type) && $type == 'checkbox'}
    <input 
      type="checkbox" 
      id="pswcag-{$name}" 
      class="pswcag-input" 
      name="pswcag-{$name}" 
      {if isset($checked) && $checked}checked{/if}>
  {/if}

  {if isset($type) && $type == 'incrementer'}
    <input 
      type="number" 
      id="pswcag-{$name}" 
      class="pswcag-input" 
      name="pswcag-{$name}" 
      min="{$min|default:'0'}" 
      max="{$max|default:'100'}"
      step="{$step|default:'1'}"
      value="{$value|default:$min|default:'0'}">
  {/if}

  {if isset($type) && $type == 'range'}
    <input 
      type="range" 
      id="pswcag-{$name}" 
      class="pswcag-input" 
      name="pswcag-{$name}" 
      min="{$min|default:'0'}" 
      max="{$max|default:'100'}"
      step="{$step|default:'1'}"
      value="{$value|default:$min|default:'0'}">

    {if isset($ticks) && $ticks|@count > 0}
      <div class="pswcag-ticks">
        {foreach from=$ticks item=tick}
          <span>{$tick}</span>
        {/foreach}
      </div>
    {/if}
  {/if}

  {if isset($type) && $type == 'button'}
    <button 
      id="pswcag-{$name}" 
      class="pswcag-input" 
      name="pswcag-{$name}" 
      type="button">
      {$text}
    </button>
  {/if}

  {if isset($type) && $type == 'custom'}
    {if isset($custom)} {$custom} {/if}
  {/if}
</label>
