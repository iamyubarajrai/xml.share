<?php /**
 * XML Document Validator
 */
ini_set ('display_errors', 1);
error_reporting (~0);

$xml = new DOMDocument;
$xml->load('10.0.data_complex_with_attr_group.xml');

if($xml->schemaValidate('10.1.data_complex_with_attr_group_schema.xsd')):
    echo "Hey! Congratulations. <strong style='color: green;'>VALID</strong> XMLSchema.";
else:
    echo "Oops! <strong style='color: red;'>INVALID</strong> XMLSchema.<hr/>";
endif;