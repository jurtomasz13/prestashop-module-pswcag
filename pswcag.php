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
            && $this->registerHook('displayHeader')
            && $this->registerHook('actionFrontControllerSetMedia')
            && Configuration::updateValue('PSWCAG', 'Pswcag');
    }

    public function uninstall()
    {
        return parent::uninstall() 
            && $this->unregisterHook('displayTop')
            && $this->registerHook('displayHeader')
            && $this->registerHook('actionFrontControllerSetMedia')
            && Configuration::deleteByName('PSWCAG');
    }

    public function hookDisplayTop()
    {
        $this->context->smarty->assign([
        ]);

        return $this->fetch('module:pswcag/views/templates/hook/accessibility_widget.tpl');
    }

    public function hookDisplayHeader()
    {
        if (isset($_COOKIE['noscript_user']) && $_COOKIE['noscript_user'] === 1) {
            return $this->fetch('module:pswcag/views/templates/hook/dynamic_css_variables.tpl');
        }
    }

    public function hookActionFrontControllerSetMedia()
    {
        // Fonts CSS
        $this->context->controller->registerStylesheet(
            'module-pswcag-fonts',
            'modules/' . $this->name . '/views/css/fonts.css',
            [
                'media' => 'all',
                'priority' => 200,
            ]
        );

        // Accessibility widget CSS
        $this->context->controller->registerStylesheet(
            'module-pswcag-accessibility-widget',
            'modules/' . $this->name . '/views/css/accessibility_widget.css',
            [
                'media' => 'all',
                'priority' => 200,
            ]
        );

        // Accessibility widget JS
        $this->context->controller->registerJavascript(
            'module-pswcag-accessibility-widget',
            'modules/' . $this->name . '/views/css/accessibility_widget.css',
            [
                'media' => 'all',
                'priority' => 200,
            ]
        );
    }
}
