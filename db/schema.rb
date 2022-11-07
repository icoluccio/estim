# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_07_004210) do
  create_table "criticas", force: :cascade do |t|
    t.text "contenido"
    t.boolean "critica_positiva"
    t.integer "juego_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["juego_id"], name: "index_criticas_on_juego_id"
  end

  create_table "criticos", force: :cascade do |t|
    t.string "type"
    t.boolean "actitud_positiva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descuentos", force: :cascade do |t|
    t.string "type"
    t.float "multiplicador"
    t.integer "descuento_fijo"
    t.integer "juego_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["juego_id"], name: "index_descuentos_on_juego_id"
  end

  create_table "juego_pagos", force: :cascade do |t|
    t.integer "juego_id", null: false
    t.integer "critico_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["critico_id"], name: "index_juego_pagos_on_critico_id"
    t.index ["juego_id"], name: "index_juego_pagos_on_juego_id"
  end

  create_table "juegos", force: :cascade do |t|
    t.integer "precio"
    t.json "caracteristicas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pais", force: :cascade do |t|
    t.integer "cotizacion"
    t.json "caracteristicas_prohibidas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plataforma_estims", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "juego_pagos", "criticos"
  add_foreign_key "juego_pagos", "juegos"
end
