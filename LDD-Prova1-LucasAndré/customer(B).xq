<table>
  <thead>
    <tr>
      <th>Store ID</th>
      <th>Number of Clients</th>
    </tr>
  </thead>
  <tbody>
    {
      for $store-id in distinct-values(/customers/customer/@store_id)
      let $count := count(/customers/customer[@store_id = $store-id])
      return
        <tr>
          <td>{ $store-id }</td>
          <td>{ $count }</td>
        </tr>
    }
  </tbody>
</table>
