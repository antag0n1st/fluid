<?php



function lang($key, $return = false) {

   
    if (!Lang::$is_lang_included) {
        include_once 'application/language/' . Lang::$lang . '.php';
        Lang::$is_lang_included = true;
    }

    if (isset(Lang::$regtext[$key])) {
        if ($return) {
            return Lang::$regtext[$key];
        } else {
            echo Lang::$regtext[$key];
        }
    } else {
        if ($return) {
            return '###';
        } else {
            echo '###';
        }
    }
}

//function current_url() {
//    $pageURL = 'http';
//    if (isset($_SERVER["HTTPS"]) and $_SERVER["HTTPS"] == "on") {
//        $pageURL .= "s";
//    }
//    $pageURL .= "://";
//    if ($_SERVER["SERVER_PORT"] != "80") {
//        $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
//    } else {
//        $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
//    }
//    return $pageURL;
//}

?>
