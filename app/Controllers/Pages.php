<?php

namespace App\Controllers;

// use Faker\Factory;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Web Programming',
            'tes' => ['satu', 'dua', 'tiga']
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'rumah',
                    'alamat' => 'Jl. abcd No. 1234',
                    'kota' => 'Karawang'
                ],
                [
                    'tipe' => 'kantor',
                    'alamat' => 'Jl. asd',
                    'kota' => 'Karawang'
                ]
            ]
        ];

        return view('pages/contact', $data);
    }

}
