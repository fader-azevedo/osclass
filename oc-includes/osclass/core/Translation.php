<?php 
use Gettext\Translator;

if (! defined('ABS_PATH')) {
  exit('ABS_PATH is not loaded. Direct access is not allowed.');
}

/*
 * Copyright 2020 OsclassPoint.com
 *
 * Osclass maintained & developed by OsclassPoint.com
 * you may not use this file except in compliance with the License.
 * You may download copy of Osclass at
 *
 *     https://osclass-classifieds.com/download
 *
 * Software is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 */


class Translation
{
  private $translator;
  private static $instance;

  /**
   * @param bool $install
   *
   * @return \Translation
   */
  public static function newInstance($install = false)
  {
    if (!self::$instance instanceof self) {
      self::$instance = new self($install);
    }
    return self::$instance;
  }

  /**
   * @return \Translation
   */
  public static function init()
  {
    self::$instance = new self();
    return self::$instance;
  }

  /**
   * Translation constructor.
   *
   * @param bool $install
   */
  public function __construct($install = false)
  {
    $this->translator = new Translator();
    if (!$install) {
      // get user/admin locale
      if (OC_ADMIN) {
        $locale = osc_current_admin_locale();
      } else {
        $locale = osc_current_user_locale();
      }

      // load core
      $core_file = osc_apply_filter('mo_core_path', osc_translations_path() . $locale . '/core.mo', $locale);
      $this->_load($core_file, 'core');

      // load messages
      $domain = osc_apply_filter('theme', osc_theme());
      $messages_file = osc_apply_filter('mo_theme_messages_path', osc_themes_path() . $domain . '/languages/' . $locale . '/messages.mo', $locale, $domain);

      if (!file_exists($messages_file)) {
        $messages_file = osc_apply_filter('mo_core_messages_path', osc_translations_path() . $locale . '/messages.mo', $locale);
      }
      $this->_load($messages_file, 'messages');

      // update 420 - load parent theme translations, in case child theme is used
      $child_split = explode('_', $domain);
      $domain_parent = '';
   
      
      // load theme
      $theme_file = osc_apply_filter('mo_theme_path', osc_themes_path() . $domain . '/languages/' . $locale . '/theme.mo', $locale, $domain);
      
      if (!file_exists($theme_file)) {
        if (!file_exists(osc_themes_path() . $domain)) {
          $domain = osc_theme();
        }
        $theme_file = osc_translations_path() . $locale . '/theme.mo';
      }
      $this->_load($theme_file, $domain);


      // update 420 - load parent theme translations, in case child theme is used
      if(end($child_split) == 'child') {
        $domain_parent = str_replace('_child', '', $domain);
        $parent_theme_file = osc_apply_filter('mo_theme_path', osc_themes_path() . $domain_parent . '/languages/' . $locale . '/theme.mo', $locale, $domain_parent);

        if (file_exists($parent_theme_file)) {
          $this->_load($parent_theme_file, $domain_parent);
        }
      }
      
      
      // load plugins
      $aPlugins = Plugins::listEnabled();
      foreach ($aPlugins as $plugin) {
        $domain = preg_replace('|/.*|', '', $plugin);
        $plugin_file = osc_apply_filter('mo_plugin_path', osc_plugins_path() . $domain . '/languages/' . $locale . '/messages.mo', $locale, $domain);
        if (file_exists($plugin_file)) {
          $this->_load($plugin_file, $domain);
        }
      }
    } else {
      $core_file = osc_translations_path() . osc_current_admin_locale() . '/core.mo';
      $this->_load($core_file, 'core');
    }
  }

  /**
   * @return \Gettext\Translator
   */
  public function _get()
  {
    return $this->translator;
  }
  /**
   * @param $file
   * @param $domain
   *
   * @return bool|\Translation
   */
  public function _load($file, $domain)
  {
    if (!file_exists($file)) {
      return false;
    }
    //Create a Translations instance using a po file
    $translations = Gettext\Translations::fromMoFile($file);

    $translations->addFromMoFile($file);
    $translations->setDomain($domain);

    $this->translator->loadTranslations($translations);

    return $this;
  }
}

/* file end: ./oc-includes/osclass/core/Translation.php */
