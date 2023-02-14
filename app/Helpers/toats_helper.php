<?php
function set_notifikasi_toast($icon, $title)
{
    session()->setFlashdata('toast_icon', $icon);
    session()->setFlashdata('toast_title', $title);
}
