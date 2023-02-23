COMMENT ON TABLE person_discounts IS 'Таблица с персональными скидками каждого клиента';
COMMENT ON COLUMN person_discounts.id IS 'Первичный ключ';
COMMENT ON COLUMN person_discounts.person_id IS 'ID клиента, вторичный ключ(person)';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'ID пиццерии, вторичный ключ(pizzeria)';
COMMENT ON COLUMN person_discounts.discount IS 'Персональная скидка клиента';