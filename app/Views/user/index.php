<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-6">
        <a href="/user/create" class="btn btn-primary mt-3"> Tambah Data User</a>
        <a href="<?= base_url('User/printpdfuser')?>" target="_blank" class="btn btn-info mt-3">Print PDF Data User</a>
            <h1 class="mt-2">Daftar User</h1>
            <form action="" method="post">
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Masukkan keyword pencarian...." name="keyword">
                <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
            </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">ALamat</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>

                    <!-- bebas pakai cara mana saja dan mungkin ada cara yang lain -->
                    <?php // $i = 1 + (5 * ($currentPage - 1)); ?>
                    <?php  $i = 1 + ( $pager->getPerPage('user') * ($currentPage - 1)); ?>
                    <?php // $i = count($user) * $currentPage - (count($user) - 1); ?> 
                    <!--  -->

                    <?php foreach ($user as $u) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $u['nama']; ?></td>
                            <td><?= $u['alamat']; ?></td>
                            <td>

                            <a href="/user/edit/<?= $u['id']; ?>" class="btn btn-warning">Edit</a>

                            <form action="/user/<?= $u['id']; ?>" method="post" class="d-inline">
                                <?= csrf_field(); ?>
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?');">Delete</button>
                            </form>
                                
                            <!-- <a href="" class="btn btn-success">Detail</a> -->
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('user', 'user_pagination') ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>