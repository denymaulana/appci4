<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class UserSeeder extends Seeder
{
    public function run()
    {
        // $data = [
        //     [
        //     'nama' => 'Deny Maulana',
        //     'alamat' => 'Jl. ABCD No.321',
        //     'created_at' => Time::now(),
        //     'updated_at' => Time::now()
        //     ],
        //     [
        //     'nama' => 'Kaka',
        //     'alamat' => 'Jl. ABC No.123',
        //     'created_at' => Time::now(),
        //     'updated_at' => Time::now()
        //     ],
        //                 [
        //     'nama' => 'Ronaldo',
        //     'alamat' => 'Jl. jalan No.13',
        //     'created_at' => Time::now(),
        //     'updated_at' => Time::now()
        //     ]
        // ];

        $faker = \Faker\Factory::create('id_ID');
        for ($i = 0; $i < 50; $i++){
        $data = [
            'nama' => $faker->name,
            'alamat' => $faker->address,
            'created_at' => Time::createFromTimestamp($faker->unixTime()),
            'updated_at' => Time::now()
        ];

        $this->db->table('user')->insert($data);
    }
        
        // Simple Queries
        // $this->db->query("INSERT INTO user (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat:, :created_at:, :updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('user')->insertBatch($data);
    }
}
