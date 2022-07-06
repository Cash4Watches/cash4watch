# README For Backend

|Route|Description|Parameters|
|-----|-----------|----------|
|/login|User Login using email and Password.|<ul><li>email</li><li>password</li></ul>|
|/profile|User Login using Token.|<ul><li>Token(Authentication Header)</li></ul>|
|/signup|Signup User.|<ul><li>full_name</li><li>password</li><li>email</li><li>company</li><li>street1</li><li>street2</li><li>city</li><li>state</li><li>zip</li><li>phone</li></ul>|
|/create-new-order|Create Order.|<ul><li>brand_name</li><li>model_number:integer</li><li>reference_number:integer</li><li>condition</li><li>previous_service</li><li>previous_polish</li><li>papers:boolean</li><li>included_items</li><li>extra_comment</li><li>Token(Authentication Header)</li></ul>|
|/check-order|Checks user only orders by token and order ID.|<ul><li>Token(Authentication Header)</li><li>order_id</li></ul>|
|/label|Tmp route for testing.|<ul><li>order_id</li></ul>|
|/update-step|toggle step.completed|<ul><li>id</li></ul>|
|/upload|Add a Document to an order.|<ul><li>name</li></li><li>order_id</li><li>file:file</li></ul>|
|/delete-document|Delete Document.|<ul><li>id</li></ul>|
