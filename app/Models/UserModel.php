<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'user';
    protected $useTimestamps = true;
    protected $allowedFields = ['nama','alamat'];

    public function search($keyword)
    {
        // $builder = $this->table('user');
        // $builder->like('nama', $keyword);
        // return $keyword;

        return $this->table('user')->like('nama', $keyword)->orLike('alamat', $keyword);
    }
}