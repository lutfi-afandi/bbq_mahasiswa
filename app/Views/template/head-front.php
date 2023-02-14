<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= ($title_tab) ? $title_tab : 'Page'; ?></title>

    <link rel="icon" type="image/x-icon" href="<?php echo base_url(); ?>/assets/img/logo1.png">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url(); ?>/theme/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url(); ?>/theme/dist/css/adminlte.min.css">

    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- signature -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" />

    <link rel="stylesheet" type="text/css" href="http://keith-wood.name/css/jquery.signature.css">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Open Sans', sans-serif;
        }

        @media (min-width: 992px) {
            .kbw-signature {
                width: 50%;
                height: 250px;
            }

            #sig canvas {
                width: 100% !important;
                height: auto;
            }
        }

        @media (max-width: 992px) {
            .kbw-signature {
                width: 100%;
                height: 200px;
            }

            #sig canvas {
                width: 100% !important;
                height: auto;
            }
        }
    </style>


</head>