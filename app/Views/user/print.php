
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
            <th scope="col">nama</th>
            <th scope="col">alamat</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1; ?>
          <?php foreach ($user as $u) : ?>
            <tr>
                <th scope="row"><?= $i++; ?></th>
                <td><?= $u['nama']; ?></td>
                <td><?= $u['alamat']; ?></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
