<?php 

    class Lang{
        public static $languages = array(
            'mk' => 'language/mk.php',
            'en' => 'language/en.php',
        );

        public static $is_lang_included = false;
        public static $regtext = array();
        public static $lang = '';
        
        public static function set_language(){
            self::$lang = (isset($_REQUEST['lang']) and $_REQUEST['lang']) ? rtrim($_REQUEST['lang'],'/') : 'mk';
         
        }

    }
    
    Lang::set_language();