<?php

namespace App\Controllers;

use App\Models\UserModel;
use Dompdf\Dompdf;
use Dompdf\Options;

class User extends BaseController
{
    protected $userModel;

    public function __construct()
    {
        $this->userModel = new UserModel();    
    }

    public function index()
    {

        $currentPage = $this->request->getVar('page_user') ? $this->request->getVar('page_user') : 1; 

        $keyword = $this->request->getVar('keyword');
        if ($keyword){
            $user = $this->userModel->search($keyword);
        } else {
            $user = $this->userModel;
        }

        $data = [
            'title' => 'Daftar User',
            // 'user' => $this->userModel->findAll()
            'user' => $user->paginate(5, 'user'),
            'pager' => $this->userModel->pager,
            'currentPage' => $currentPage
        ];

        return view('user/index', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah Data User',
            'validation' => \Config\Services::validation()
        ];

        return view('user/create', $data);
    }
 
    public function save()
    {
        // validasi input
        if (!$this->validate([
            'nama' => [
                'rules' => 'required|is_unique[user.nama]',
                'errors' => [
                    'required' => '{field} user harus diisi',
                    'is_unique' => '{field} user sudah terdaftar'
                ]
                ]
        ])) {
            return redirect()->to('/user/create')->withInput();
        }

        // $slug = url_title($this->request->getVar('nama'), '-', true);
        $this->userModel->save([
            'nama' => $this->request->getVar('nama'),
            // 'slug' => $slug,
            'alamat' => $this->request->getVar('alamat'),
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahan');

        return redirect()->to('/user');
    }

    public function delete($id)
    {
        $this->userModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus');
        return redirect()->to('/user');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Form Ubah Data User',
            'validation' => \Config\Services::validation(),
            'user' => $this->userModel->find($id)
        ];
        return view('user/edit', $data);        
        // $this->userModel->find($id);
    }    

    public function update($id)
    {
        // cek nama
        // $namaLama = $this->userModel->find($this->request->getVar('id'));
        // dd($namaLama);
        // dd($this->request->getVar('id'));
        $namaLama = $this->userModel->find($id);
        if ($namaLama['nama'] == $this->request->getVar('nama')){
            $rule_nama = 'required';
        } else {
            $rule_nama = 'required|is_unique[user.nama]';
        }

        if (!$this->validate([
            'nama' => [
                'rules' => $rule_nama,
                'errors' => [
                    'required' => '{field} nama harus diisi',
                    'is_unique' => '{field} nama sudah terdaftar'
                ]
                ]
        ])) 
        {
            return redirect()->to('/user/edit');
        }
        
        $this->userModel->save([
            'id' => $id,
            'nama' => $this->request->getVar('nama'),
            'alamat' => $this->request->getVar('alamat'),
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah');

        return redirect()->to('/user');
    }

    public function printpdfuser() 
    {
        $data = [
            'title' => 'Detail User',
            'user' => $this->userModel->find()
        ];

        $html = view('user/print', $data);

        $options = new Options();
        $options->set('isRemoteEnabled', TRUE);
        setlocale(LC_NUMERIC, "C");

        $dompdf = new Dompdf($options);
        
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'potrait');
        $dompdf->render();
        $dompdf->stream("", array("Attachment" => false));
    }
}