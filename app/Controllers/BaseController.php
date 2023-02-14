<?php

namespace App\Controllers;

use App\Models\AuthModel;
use App\Models\InfoModel;
use App\Models\JadwalModel;
use App\Models\JurusanModel;
use App\Models\KegiatanModel;
use App\Models\KelasModel;
use App\Models\LaporanModel;
use App\Models\PesertaModel;
use App\Models\UserModel;
use App\Models\WaktuModel;
use CodeIgniter\Commands\Help;
use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = [];

    /**
     * Constructor.
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        // E.g.: $this->session = \Config\Services::session();
        session();
        helper('form');
        helper('swal_helper');
        helper('toats_helper');
        $this->validation = \Config\Services::validation();
        $this->getErrors = \Config\Services::validation()->getErrors();
        $this->db =  \Config\Database::connect();
        $this->session = \Config\Services::session();
        $this->PesertaModel = new PesertaModel();
        $this->JurusanModel = new JurusanModel();
        $this->KelasModel = new KelasModel();
        $this->WaktuModel = new WaktuModel();
        $this->UserModel = new UserModel();
        $this->AuthModel = new AuthModel();
        $this->JadwalModel = new JadwalModel();
        $this->InfoModel = new InfoModel();
        $this->KegiatanModel = new KegiatanModel();
        $this->LaporanModel = new LaporanModel();
        $this->excel = new Spreadsheet();
    }
}
