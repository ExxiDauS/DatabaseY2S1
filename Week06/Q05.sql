-- จงแสดงชื่อ นามสกุล และรหัสผู้จัดการของผู้จัดการทุกคน โดยตั้งชื่อคอลัมน์ดังนี้ MGR First Name, MGR Last Name, MGR และเรียงลำดับตามรหัสผู้จัดการจากน้อยไปมาก (โดยตัดแถวที่ซ้ำให้เหลือแถวเดียว) (ใช้ ON clause)
-- หมายเหตุ ถ้าต้องใช้ Table alias ให้ใช้ตัวอักษรแรกของชื่อตาราง เช่น ตาราง employees ใช้ e, ตาราง manage ใช้ m


SELECT DISTINCT e.first_name AS `MGR First Name`, e.last_name AS `MGR Last Name`, e.manager_id AS MGR
FROM employees e
JOIN employees m
ON m.manager_id = e.employee_id
ORDER BY e.manager_id ASC;