<?php

// $purchase_code = $_POST['purchasecode'];
// $db_host = $_POST['dbhost'];
// $db_user = $_POST['dbuser'];
// $db_password = $_POST['dbpass'];
// $db_name = $_POST['dbname'];

$purchase_code = "57844067-6647-4ef3-8b2c-21dffcc93691";
$db_host = "localhost";
$db_user = "root";
$db_password = "password";
$db_name = "db_name";

$url = 'demo.lion-coders.com/soft/limsverify/';
$post_string = 'purchasecode='.urlencode($purchase_code);
$ch = curl_init();
curl_setopt($ch,CURLOPT_URL, $url);
curl_setopt($ch,CURLOPT_POST, true);
curl_setopt($ch,CURLOPT_POSTFIELDS, $post_string);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$result = curl_exec($ch);
$object = new \stdClass();
$object = json_decode(strip_tags($result));
var_dump($object);
curl_close($ch);
die();

if ($object->codecheck) {
    try {
        $dbh = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_password);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $dbh->exec($object->dbdata);

        require '../vendor/autoload.php';
        $dot = new \Dotenv\Dotenv('../');
        $dot->load();
        $path = '../.env';
        if (file_exists($path)) {
			$searchArray = array('DB_HOST='.env('DB_HOST'), 'DB_DATABASE='.env('DB_DATABASE'), 'DB_USERNAME='.env('DB_USERNAME'), 'DB_PASSWORD='.env('DB_PASSWORD'), 'USER_VERIFIED='.env('USER_VERIFIED'));

			$replaceArray = array('DB_HOST='.$db_host, 'DB_DATABASE='.$db_name, 'DB_USERNAME='.$db_user, 'DB_PASSWORD='.$db_password, 'USER_VERIFIED=1');
            file_put_contents($path, str_replace($searchArray, $replaceArray, file_get_contents($path)));
        }

        $dir = '../install';
        $it = new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS);
        $files = new RecursiveIteratorIterator($it, RecursiveIteratorIterator::CHILD_FIRST);
        foreach($files as $file) {
            if ($file->isDir()){
                rmdir($file->getRealPath());
            } else {
                unlink($file->getRealPath());
            }
        }
        rmdir($dir);

    }
    catch(PDOException $e) {
        header("location: step3.php?_error=2");
        exit;
    }
} else {
    header("location: step3.php?_error=1");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>LIMS Installer</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
    <div class="col-md-6 offset-md-3">
        <div class='wrapper'>
            <header>
                <img src="assets/images/logo.png" alt="Logo"/>
                <h1 class="text-center">LIMS Auto Installer</h1>
            </header>
            <hr>
            <div class="content pad-top-bot-50">
                <p>
                    <h5><strong class="theme-color">Congratulations!</strong>
                    You have successfully installed LIMS!</h5><br>
                    Please login here -  <strong><a href="<?php echo '../'; ?>">Login</a></strong>
                    <br>
                    Username: <strong>admin</strong></strong><br>
                    Password: <strong>admin</strong><br><br>
                    After login, go to Settings to change other Configurations.
                </p>
            </div>
            <hr>
            <footer>Copyright &copy; lionCoders. All Rights Reserved.</footer>
        </div>
    </div>

</body>
</html>

