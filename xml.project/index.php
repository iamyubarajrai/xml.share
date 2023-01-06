<?php /**
 * XML Document Validator
 */
ini_set ('display_errors', 1);
error_reporting (~0);

$xml = new DOMDocument;
$xml->load('project.xml');

if($xml->schemaValidate('project.xsd')):
    echo "Hey! Congratulations. <strong style='color: green;'>VALID</strong> XMLSchema.";
else:
    echo "Oops! <strong style='color: red;'>INVALID</strong> XMLSchema.<hr/>";
endif;