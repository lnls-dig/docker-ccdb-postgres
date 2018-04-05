--
-- Adding a new predefined data type "BOOLEAN LIST"
--


INSERT INTO data_type (id, modified_at, modified_by, version, description, name, scalar) VALUES (nextval('hibernate_sequence'), CURRENT_TIMESTAMP, 'system', 0, 'Vector of Booleans (1D array)', 'Boolean List', FALSE);
