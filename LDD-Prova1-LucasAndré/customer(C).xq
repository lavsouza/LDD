let $customers := //customer
let $sortedCustomers := $customers 
  return
  <html>
    <body>
      <ul>
        {
          for $customer in $sortedCustomers 
          order by $customer/@first_name
          return
            <li>
              {$customer/@first_name} {$customer/@last_name}
            </li>
        }
      </ul>
    </body>
  </html>
