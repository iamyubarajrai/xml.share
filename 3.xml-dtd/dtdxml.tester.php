<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Validator | XML-DTD</title>
</head>
<body>
    <?php /**
     * XML Document Validator
     */
    $xml = new DOMDocument;
    $xml->load('external-dtd/data.xml');

    if($xml->validate()): ?>
        <h2 style="color: green; margin: 80px; text-align:center;">
            It's a <span style="color: limegreen;">VALID</span> XML document!
        </h2>
    <?php else: ?>
        <h2 style="color: orange; margin: 80px; text-align:center;">
            It's a an <span style="color: red;">INVALID</span> XML document!
        </h2>
    <?php endif; ?>
</body>
</html>