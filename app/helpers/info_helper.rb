module InfoHelper
  NAME = Propert.find_by_code('name_site').value
  COMPANY_NAME = Propert.find_by_code('name_company').value
end
