
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Judul</th>
            <th scope="col">Penulis</th>
            <th scope="col">Penerbit</th>
            <th scope="col">Gambar</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1; ?>
          <?php foreach ($komik as $k) : ?>
            <tr>
                <th scope="row"><?= $i++; ?></th>
                <td><?= $k['judul']; ?></td>
                <td><?= $k['penulis']; ?></td>
                <td><?= $k['penerbit']; ?></td>
                <td><img src="<?= 'http://localhost/appci4/public/img/' . $k['sampul']; ?>" width="50" alt="" class="sampul"></td>
                <!-- <img src="http://localhost/appci4/public/img/naruto.jpg" alt="" class="sampul"> -->
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
