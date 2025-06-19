SELECT * FROM vw_checklist_progress
WHERE cycle_id = '2025H1'
ORDER BY client_name, vendor_name, vendor_service_name;


cycle_id, cycle_name, client_name, vendor_name, vendor_service_name, checklist_type, status, status_jp, completed_at

SELECT cycle_id, cycle_name, client_name, vendor_name, vendor_service_name, checklist_type, status, status_jp, completed_at FROM vw_checklist_progress
WHERE cycle_id = '2025H1'
ORDER BY client_name, vendor_name, vendor_service_name;