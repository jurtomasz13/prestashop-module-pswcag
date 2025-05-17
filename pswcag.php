<?php

if (!defined('_PS_VERSION_')) {
    exit;
}

require_once __DIR__ . '/vendor/autoload.php';

use PrestaShop\Module\Pswcag\Traits\UseNewTranslationSystemTrait;

class Pswcag extends Module {
    use UseNewTranslationSystemTrait;

    public function __construct()
    {
        $this->name = 'pswcag';
        $this->tab = 'administration';
        $this->version = '1.0.0';
        $this->author = 'Tomasz&nbsp;Jurek';
        $this->need_instance = 0;
        $this->bootstrap = true;
        $this->ps_versions_compliancy = [
            'min' => '1.7.0.0',
            'max' => '9.99.99'
        ];

        parent::__construct();

        $this->displayName = $this->trans( 'PSWCAG', [], 'Modules.Pswcag.Pswcag');
        $this->description = $this->trans( 'Module to help with WCAG compliance.', [], 'Modules.Pswcag.Pswcag');

        if (!Configuration::get('PSWCAG')) {
            $this->warning = $this->trans( 'No name provided', [], 'Modules.Pswcag.Pswcag');
        }
    }

    public function install()
    {
        return parent::install() 
            && $this->registerHook('displayTop')
            && Configuration::updateValue('PSWCAG', 'Pswcag');
    }

    public function uninstall()
    {
        return parent::uninstall() 
            && $this->unregisterHook('displayTop')
            && Configuration::deleteByName('PSWCAG');
    }

    public function hookDisplayTop()
    {
        return 'hello';
    }
}