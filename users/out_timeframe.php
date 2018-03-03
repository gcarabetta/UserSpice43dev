<?php

require_once '../users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/header.php';
require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';
?>
<?php if (!securePage($_SERVER['PHP_SELF'])){die();} ?>

<div id="page-wrapper">
        <div class="container-fluid">
                <div class="row">
                        <div class="col-sm-12">
                                        <!-- Content Goes Here. Class width can be adjusted -->
                                        <!-- End of main content section -->

                                        <h1>It's not the right time...</h1>

<P>The time window in which you are allowed access has not yet started or expired.</P>

</div> <!-- div col-sm-12 -->
</div> <!-- div row -->

        </div> <!-- /.container -->
</div> <!-- /.wrapper -->


        <!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->
<script>
setTimeout('window.location.reload();', 30000);
</script>

<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>
