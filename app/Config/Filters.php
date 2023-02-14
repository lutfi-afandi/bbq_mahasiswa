<?php

namespace Config;

use CodeIgniter\Config\BaseConfig;
use CodeIgniter\Filters\CSRF;
use CodeIgniter\Filters\DebugToolbar;
use CodeIgniter\Filters\Honeypot;

class Filters extends BaseConfig
{
    /**
     * Configures aliases for Filter classes to
     * make reading things nicer and simpler.
     *
     * @var array
     */
    public $aliases = [
        'csrf'     => CSRF::class,
        'toolbar'  => DebugToolbar::class,
        'honeypot' => Honeypot::class,
        'filteradmin' => \App\Filters\FilterAdmin::class,
        'filtertutor' => \App\Filters\FilterTutor::class,
        'filterpeserta' => \App\Filters\FilterPeserta::class,
    ];

    /**
     * List of filter aliases that are always
     * applied before and after every request.
     *
     * @var array
     */
    public $globals = [
        'before' => [
            'filteradmin' => [
                'except' => [
                    'login', 'login/*',
                    'home', 'home/*',
                    'peserta/register', 'peserta/register/*',
                    '/'
                ]
            ],
            'filtertutor' => [
                'except' => [
                    'login', 'login/*',
                    'home', 'home/*',
                    'peserta/register', 'peserta/register/*',
                    '/'
                ]
            ],
            'filterpeserta' => [
                'except' => [
                    'login', 'login/*',
                    'home', 'home/*',
                    'peserta/register', 'peserta/register/*',
                    '/'
                ]
            ],
            // 'honeypot',
            // 'csrf',
        ],
        'after' => [
            'filteradmin' => [
                'except' => [
                    'admin', 'admin/*',
                    'admin', 'admin/dashboard/*',
                    'admin', 'admin/info/*',
                    'admin', 'admin/jadwaltutor/*',
                    'admin', 'admin/kegiatan/*',
                    'admin', 'admin/peserta/*',
                    'admin', 'admin/tutor/*',
                    'admin', 'admin/user/*',
                    'admin', 'admin/dosen/*',
                    'home', 'home/*',
                    'cetak', 'cetak/*',
                    '/'
                ]
            ],
            'filtertutor' => [
                'except' => [
                    'tutor', 'tutor/*',
                    'tutor', 'tutor/akun/*',
                    'tutor', 'tutor/dashboard/*',
                    'tutor', 'tutor/kbm/*',
                    'home', 'home/*',
                    '/'
                ]
            ],
            'filterpeserta' => [
                'except' => [
                    'peserta', 'peserta/*',
                    'peserta', 'peserta/akun/*',
                    'peserta', 'peserta/dashboard/*',
                    'home', 'home/*',
                    '/'
                ]
            ],
            'toolbar',
            // 'honeypot',
        ],
    ];

    /**
     * List of filter aliases that works on a
     * particular HTTP method (GET, POST, etc.).
     *
     * Example:
     * 'post' => ['csrf', 'throttle']
     *
     * @var array
     */
    public $methods = [];

    /**
     * List of filter aliases that should run on any
     * before or after URI patterns.
     *
     * Example:
     * 'isLoggedIn' => ['before' => ['account/*', 'profiles/*']]
     *
     * @var array
     */
    public $filters = [];
}
