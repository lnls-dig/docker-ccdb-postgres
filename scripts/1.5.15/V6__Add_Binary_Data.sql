CREATE TABLE binary_data (
    id bigint NOT NULL,   
    content bytea NOT NULL,
    content_length integer
);

ALTER TABLE binary_data OWNER TO ${user};
ALTER TABLE ONLY binary_data
    ADD CONSTRAINT pk_binary_data PRIMARY KEY (id);

DELETE FROM alignment_artifact;
ALTER TABLE alignment_artifact ADD COLUMN binary_data_id bigint;
ALTER TABLE alignment_artifact DROP COLUMN is_internal;
ALTER TABLE alignment_artifact DROP COLUMN uri;
ALTER TABLE alignment_artifact
    ADD CONSTRAINT fk_binary_data_alignment_artifact FOREIGN KEY (binary_data_id) REFERENCES binary_data(id);

DELETE FROM comptype_artifact;
ALTER TABLE comptype_artifact ADD COLUMN binary_data_id bigint;
ALTER TABLE comptype_artifact DROP COLUMN is_internal;
ALTER TABLE comptype_artifact DROP COLUMN uri;
ALTER TABLE comptype_artifact
    ADD CONSTRAINT fk_binary_data_comptype_artifact FOREIGN KEY (binary_data_id) REFERENCES binary_data(id);

DELETE FROM device_artifact;
ALTER TABLE device_artifact ADD COLUMN binary_data_id bigint;
ALTER TABLE device_artifact DROP COLUMN is_internal;
ALTER TABLE device_artifact DROP COLUMN uri;
ALTER TABLE device_artifact
    ADD CONSTRAINT fk_binary_data_device_artifact FOREIGN KEY (binary_data_id) REFERENCES binary_data(id);

DELETE FROM installation_artifact;
ALTER TABLE installation_artifact ADD COLUMN binary_data_id bigint;
ALTER TABLE installation_artifact DROP COLUMN is_internal;
ALTER TABLE installation_artifact DROP COLUMN uri;
ALTER TABLE installation_artifact
    ADD CONSTRAINT fk_binary_data_installation_artifact FOREIGN KEY (binary_data_id) REFERENCES binary_data(id);

DELETE FROM slot_artifact;
ALTER TABLE slot_artifact ADD COLUMN binary_data_id bigint;
ALTER TABLE slot_artifact DROP COLUMN is_internal;
ALTER TABLE slot_artifact DROP COLUMN uri;
ALTER TABLE slot_artifact
    ADD CONSTRAINT fk_binary_data_slot_artifact FOREIGN KEY (binary_data_id) REFERENCES binary_data(id);




