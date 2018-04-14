<?php
//Every time we do an update to the db, a new migration will be added here
$migrations = array(
  '3GJYaKcqUtw7','2XQjsKYJAfn1','549DLFeHMNw7','69qa8h6E1bzG','3GJYaKcqUtz8',
  '4Dgt2XVjgz2x','VLBp32gTWvEo','1XdrInkjV86F','Q3KlhjdtxE5X','qbQsBNQ82Q59',
  'ug5D3pVrNvfS','V6R8xNxJj47h','69FbVbv4Jtrz','4A6BdJHyvP4a'
);
$applied = [];
$db_migrations = $db->query("SELECT migration FROM updates")->results();
foreach($db_migrations as $d){
$applied[] = $d->migration;
}
$missing = array_diff($migrations,$applied);
if(!empty($missing)){ ?>
  <div class="alert alert-danger">
    <strong>Warning!</strong> Your database is out of date. Please <a href="../users/update.php">click here</a> to get the latest update. Failure to do so, could cause system instability.
  </div>
<?php } ?>
