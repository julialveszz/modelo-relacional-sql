-- Tabela: users
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100),
    password VARCHAR,
    administrator BINARY DEFAULT 'FALSE'
);

-- Tabela: has_dog
CREATE TABLE has_dog (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    name_dog VARCHAR(50),
    male_or_female VARCHAR(10),
    belongs_to VARCHAR(20),
    id_neutered INTEGER REFERENCES neutered(id),
    how_long_with_dog INTEGER,
    is_your_first_dog BINARY,
    id_other_pets INTEGER REFERENCES other_pets(id),
    age_dog INTEGER(2),
    dog_breed VARCHAR(100),
    where_did_you_get VARCHAR(50),
    did_you_pay BINARY,
    age_when_arrived INTEGER(2),
    describe_personality MEDIUMTEXT,
    id_why_have_dog INTEGER REFERENCES why_have_dog(id),
    characteristics VARCHAR(255),
    decision_makers VARCHAR(100),
    have_dog_couldnt_keep MEDIUMTEXT,
    vet VARCHAR(10),
    what_would_you_say VARCHAR(255)
);

-- Tabela: neutered
CREATE TABLE neutered (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    dog_is_neutered BINARY,
    when INTEGER(2) COMMENT 'How many months/years was the dog when neutered?'
);

-- Tabela: other_pets
CREATE TABLE other_pets (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    dogs INTEGER,
    cats INTEGER
);

-- Tabela: why_have_dog
CREATE TABLE why_have_dog (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    company_for_children BINARY,
    company_for_adults BINARY,
    appearance BINARY,
    company_for_other_dog BINARY,
    teaching_responsability BINARY,
    friends_already_had BINARY,
    house_protection BINARY,
    helping_friend BINARY,
    saving_your_life BINARY,
    chose_me BINARY,
    gift BINARY,
    other_reasons VARCHAR(255),
    tv_social_media BINARY,
    parents_already_had BINARY
);

-- Tabela: had_dog
CREATE TABLE had_dog (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    name_dog VARCHAR(50),
    belonged_to VARCHAR(20),
    describe_personality VARCHAR,
    how_long_with_dog INTEGER,
    was_your_first_dog BINARY,
    id_other_pets INTEGER REFERENCES other_pets(id),
    id_neutered INTEGER REFERENCES neutered(id),
    dog_breed VARCHAR(50),
    where_did_you_get VARCHAR(100),
    how_much_it_costs VARCHAR(50),
    id_why_have_dog INTEGER REFERENCES why_have_dog(id),
    characteristics VARCHAR(255),
    decision_makers VARCHAR(50),
    first_weeks_what_liked MEDIUMTEXT,
    what_you_didnt_like MEDIUMTEXT,
    times_vet INTEGER,
    reasons_vet VARCHAR(255),
    when_stopped_living_together VARCHAR(100),
    dog_age INTEGER,
    why_stopped_living_together MEDIUMTEXT,
    would_you_live_with_new_dog BINARY,
    reasons MEDIUMTEXT
);

-- Tabela: user_personal_infos
CREATE TABLE user_personal_infos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    age INTEGER(3),
    gender VARCHAR(20),
    educational_level VARCHAR(100),
    housing VARCHAR(100),
    family_composition INTEGER,
    income VARCHAR(100),
    how_many_family_members VARCHAR(100)
);

-- Tabela: user_geographic_infos
CREATE TABLE user_geographic_infos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    country VARCHAR(100),
    state VARCHAR(100),
    city VARCHAR(100),
    neighborhood VARCHAR(70),
    what_type_form VARCHAR(50)
);

-- Tabela: user_contact_infos
CREATE TABLE user_contact_infos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    full_name VARCHAR(255),
    social_name VARCHAR(255),
    phone_number VARCHAR(20)
);

-- Tabela: null_forms
CREATE TABLE null_forms (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    why_not MEDIUMTEXT
);

-- Tabela: never_had
CREATE TABLE never_had (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_users INTEGER REFERENCES users(id),
    dog_coat VARCHAR(10),
    color VARCHAR(50),
    size VARCHAR(10),
    male_or_female VARCHAR(10),
    age INTEGER,
    dog_breed VARCHAR(50),
    id_why_have_dog INTEGER REFERENCES why_have_dog(id),
    name_dog VARCHAR(50),
    reasons_name VARCHAR(255),
    buy_or_adopt VARCHAR(10),
    when_will_get VARCHAR(50),
    personality_behavior MEDIUMTEXT,
    searched_expenses_with_dog BINARY,
    how_much DECIMAL
);
