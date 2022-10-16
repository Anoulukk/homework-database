SELECT customer_id'ລະຫັດລູກຄ້າ',first_name'ຊື່ລູກຄ້າ',last_name'ນາສະກຸມ', phone'ເບີ', email'ເມວ', street'ສະຖົນ',city'ເມືອງ', state'ລັດ',zip_code'ລະຫັດປະເທດ' FROM sales.customers

SELECT store_id 'ລະຫັດຮ້ານ', store_name 'ຊື່ຮ້ານ', phone 'ເບີໂທ', email 'ເມວ',street 'ສະຖົນ', city 'ເມືອງ', zip_code 'ລະຫັດປະເທດ' FROM sales.stores

SELECT staff_id'ລະຫັດພະນັກງານ', first_name'ຊື່',last_name'ນາສະກຸມ',sales.staffs.email'ເມວ',sales.staffs.phone'ເບີ',active'ການເຄື່ອນໄຫວ',
sales.stores.store_name'ຊື່ຮ້ານ', manager_id'ລະຫັດຜູ້ບໍລິຫານ' FROM  sales.staffs, sales.stores WHERE sales.staffs.store_id = sales.stores.store_id

SELECT order_id'ລະຫັດອໍເດີ້',sales.customers.first_name'ຊື່ລູກຄ້າ',order_status'ສະຖານະສັ່ງຊື້',order_date'ວັນທີ່ສັ່ງຊື້',required_date'ວັນທີ່ຕ້ອງການ',shipped_date'ວັນທີ່ຈັດສົ່ງ',
sales.stores.store_name'ຊື່ຮ້ານ',sales.staffs.first_name'ຊື່ພະນັກງານ' FROM sales.stores,sales.orders,sales.staffs, sales.customers WHERE 
sales.orders.store_id = sales.stores.store_id AND sales.orders.staff_id = sales.staffs.staff_id AND sales.orders.staff_id = sales.customers.customer_id

SELECT order_id'ລະຫັດອໍເດີ້ໄອເທັມ',item_id 'ລາຍການ', production.products.product_name'ຊື່ສິນຄ້າ',sales.order_items.quantity'ຄຸນະພາບ', 
sales.order_items.list_price'ລາຄາ',discount'ສ່ວນຫຼຸດ' FROM sales.order_items,production.products WHERE 
sales.order_items.product_id=production.products.product_id

select order_id'ລະຫັດສະຕ໋ອກ',sales.customers.first_name'ຊື່ລູກຄ້າ',order_status'ສະຖານະສັ່ງຊື້',order_date'ວັນທີ່ສັ່ງຊື້',required_date'ວັນທີ່ຕ້ອງການ',
shipped_date'ວັນທີ່ຈັດສົ່ງ',sales.stores.store_name'ຊື່ຮ້ານ',sales.staffs.first_name'ຊື່ພະນັກງານ' 
from sales.stores,sales.orders,sales.staffs, sales.customers where
sales.orders.store_id = sales.stores.store_id and 
sales.orders.staff_id = sales.staffs.staff_id and
sales.orders.staff_id = sales.customers.customer_id