CREATE TABLE generic_artifact (
    id character varying(50) NOT NULL,   
    modified_at timestamp without time zone NOT NULL,
    modified_by character varying(64) NOT NULL,
    description character varying(255) NOT NULL,
    name character varying(128) NOT NULL,
    content bytea NOT NULL,
    artifact_parent bigint NOT NULL
);


CREATE TABLE external_link(
    id character varying(50) NOT NULL,
    modified_at timestamp without time zone NOT NULL,
    modified_by character varying(64) NOT NULL,
    description character varying(255) NOT NULL,
    name character varying(128) NOT NULL,
    uri text NOT NULL,
    link_parent bigint NOT NULL
);


