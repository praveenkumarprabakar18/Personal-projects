set @NUMBER_OF_ORDERS = 0;
call deliverycompanyabc.getnumberoforders('California', 2016, @NUMBER_OF_ORDERS);
select @NUMBER_OF_ORDERS;
