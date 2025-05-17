# PSWCAG - PrestaShop Web Content Accessibility Guidelines Module

A comprehensive PrestaShop module designed to enhance your store's compliance with Web Content Accessibility Guidelines (WCAG). Make your online shop more accessible to all users, including those with disabilities.

## Features

- Automated accessibility checks for your store's front-end
- Customizable accessibility enhancements
- Support for WCAG 2.1 standards
- Minimal performance impact on your store

## Requirements

- PrestaShop 1.7.x, 8.x or 9.x
- PHP 7.1 or higher
- Composer (for development installation)

## Installation

### Option 1: Direct Installation (Recommended)

1. **Download the latest release**:

   - Visit the [Releases page](https://github.com/jurtomasz13/prestashop-module-pswcag/releases)
   - Download the latest `pswcag.zip` file

2. **Install via PrestaShop Back Office**:
   - Navigate to `Modules > Module Catalog`
   - Click on "Upload a module"
   - Select the downloaded zip file
   - Follow the on-screen instructions

### Option 2: Development Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/jurtomasz13/prestashop-module-pswcag.git
   ```

2. **Navigate to the module directory**:

   ```bash
   cd pswcag
   ```

3. **Install dependencies**:

   ```bash
   composer install
   ```

4. **Install the module**:

   - **Option A**: Via PrestaShop Back Office

     - Zip the folder
     - Upload via Modules > Module Catalog

   - **Option B**: Via Command Line
     ```bash
     php bin/console prestashop:module install pswcag
     ```

## Configuration

1. After installation, navigate to the module's configuration page in your PrestaShop Back Office
2. Configure the accessibility features you want to enable
