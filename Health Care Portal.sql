-- Table: public.appointments

-- DROP TABLE IF EXISTS public.appointments;

CREATE TABLE IF NOT EXISTS public.appointments
(
    appointment_id bigint NOT NULL DEFAULT 'nextval('appointments_appointment_id_seq'::regclass)',
    appointment_booked_date timestamp without time zone,
    appointment_date timestamp without time zone,
    doctor_id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.appointments
    OWNER to postgres;
	
	
	
	
-- Table: public.doctors

-- DROP TABLE IF EXISTS public.doctors;

CREATE TABLE IF NOT EXISTS public.doctors
(
    doctor_id bigint NOT NULL DEFAULT 'nextval('doctors_doctor_id_seq'::regclass)',
    added_by bigint NOT NULL,
    address character varying(255) COLLATE pg_catalog."default",
    created_at timestamp without time zone,
    doctor_name character varying(255) COLLATE pg_catalog."default",
    is_active boolean NOT NULL,
    mobile_no character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.doctors
    OWNER to postgres;
	
	
	
-- Table: public.health_history

-- DROP TABLE IF EXISTS public.health_history;

CREATE TABLE IF NOT EXISTS public.health_history
(
    id bigint NOT NULL DEFAULT 'nextval('health_history_id_seq'::regclass)',
    allergies character varying(255) COLLATE pg_catalog."default",
    blood_oxygen_level real NOT NULL,
    body_temperature real NOT NULL,
    diastolic_bp real NOT NULL,
    other_symptoms character varying(255) COLLATE pg_catalog."default",
    previous_medical_history character varying(255) COLLATE pg_catalog."default",
    recorded_at timestamp without time zone,
    systolic_bp real NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT health_history_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.health_history
    OWNER to postgres;
	
	
	
-- Table: public.medications

-- DROP TABLE IF EXISTS public.medications;

CREATE TABLE IF NOT EXISTS public.medications
(
    medication_id bigint NOT NULL DEFAULT 'nextval('medications_medication_id_seq'::regclass)',
    booked_date timestamp without time zone,
    estimated_delivery_date timestamp without time zone,
    pharmacy_id bigint NOT NULL,
    user_id bigint NOT NULL,
    CONSTRAINT medications_pkey PRIMARY KEY (medication_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.medications
    OWNER to postgres;
	
	
	

-- Table: public.pharmacy

-- DROP TABLE IF EXISTS public.pharmacy;

CREATE TABLE IF NOT EXISTS public.pharmacy
(
    pharmacy_id bigint NOT NULL DEFAULT 'nextval('pharmacy_pharmacy_id_seq'::regclass)',
    added_by bigint NOT NULL,
    address character varying(255) COLLATE pg_catalog."default",
    created_at timestamp without time zone,
    is_active boolean NOT NULL,
    mobile_no character varying(255) COLLATE pg_catalog."default",
    pharmacy_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT pharmacy_pkey PRIMARY KEY (pharmacy_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pharmacy
    OWNER to postgres;
	
	
	
	
-- Table: public.users

-- DROP TABLE IF EXISTS public.users;

CREATE TABLE IF NOT EXISTS public.users
(
    user_id bigint NOT NULL DEFAULT 'nextval('users_user_id_seq'::regclass)',
    address character varying(255) COLLATE pg_catalog."default",
    country character varying(255) COLLATE pg_catalog."default",
    create_at timestamp without time zone,
    dob timestamp without time zone,
    email_id character varying(255) COLLATE pg_catalog."default",
    full_name character varying(255) COLLATE pg_catalog."default",
    mobile_no character varying(255) COLLATE pg_catalog."default",
    password character varying(255) COLLATE pg_catalog."default",
    primary_contact_person_mobile character varying(255) COLLATE pg_catalog."default",
    primary_contact_person_name character varying(255) COLLATE pg_catalog."default",
    user_name character varying(255) COLLATE pg_catalog."default",
    user_role character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;