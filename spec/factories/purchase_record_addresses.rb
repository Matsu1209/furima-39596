FactoryBot.define do
  factory :purchase_record_address do
    post_code {'900-0000'}
    prefecture_id {'宮城県'}
    municipality {'仙台市青葉区ダミー町'}
    street_address {'1-1-1'}
    building_name {'建物名'}
    telephone_number {'09000000000'}
    credit_card_number {'4242424242424242'}
    expiration_date {'202312'}
    security_code {'123'}
    token {"tok_abcdefghijk00000000000000000"}
  end
end
