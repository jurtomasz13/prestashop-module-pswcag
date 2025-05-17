<?php

namespace PrestaShop\Module\Pswcag\Traits;

trait UseNewTranslationSystemTrait
{
    /**
     * Used internally by PrestaShop to determine if the new translation system is being used.
     * This method must appear in the main module class to enable Back Office translations
     * 
     * @return bool
     */
    public function isUsingNewTranslationSystem()
    {
        return true;
    }
}
