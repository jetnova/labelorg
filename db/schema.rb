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

ActiveRecord::Schema.define(version: 2021_03_26_171949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "act_musicians", force: :cascade do |t|
    t.boolean "current", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "musician_id"
    t.bigint "act_id"
    t.index ["act_id"], name: "index_act_musicians_on_act_id"
    t.index ["musician_id"], name: "index_act_musicians_on_musician_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "acts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active"
  end

  create_table "formats", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "dob"
    t.string "cob"
    t.string "nationality"
    t.string "ipi"
    t.string "cae"
    t.string "isrc_stem"
  end

  create_table "playlist_recordings", force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "recording_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playlist_id"], name: "index_playlist_recordings_on_playlist_id"
    t.index ["recording_id"], name: "index_playlist_recordings_on_recording_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "record_deal_recordings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "record_deal_id"
    t.bigint "recording_id"
    t.index ["record_deal_id"], name: "index_record_deal_recordings_on_record_deal_id"
    t.index ["recording_id"], name: "index_record_deal_recordings_on_recording_id"
  end

  create_table "record_deals", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "record_label_id"
    t.bigint "act_id"
    t.index ["act_id"], name: "index_record_deals_on_act_id"
    t.index ["record_label_id"], name: "index_record_deals_on_record_label_id"
  end

  create_table "record_label_acts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "record_label_id"
    t.bigint "act_id"
    t.index ["act_id"], name: "index_record_label_acts_on_act_id"
    t.index ["record_label_id"], name: "index_record_label_acts_on_record_label_id"
  end

  create_table "record_labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "isrc_stem"
  end

  create_table "recording_acts", force: :cascade do |t|
    t.bigint "recording_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "act_id"
    t.index ["act_id"], name: "index_recording_acts_on_act_id"
    t.index ["recording_id"], name: "index_recording_acts_on_recording_id"
  end

  create_table "recording_performers", force: :cascade do |t|
    t.bigint "musician_id", null: false
    t.bigint "recording_id", null: false
    t.float "split"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["musician_id"], name: "index_recording_performers_on_musician_id"
    t.index ["recording_id"], name: "index_recording_performers_on_recording_id"
  end

  create_table "recording_producers", force: :cascade do |t|
    t.bigint "musician_id", null: false
    t.bigint "recording_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["musician_id"], name: "index_recording_producers_on_musician_id"
    t.index ["recording_id"], name: "index_recording_producers_on_recording_id"
  end

  create_table "recordings", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "genre_id", null: false
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "isrc"
    t.integer "bpm"
    t.index ["genre_id"], name: "index_recordings_on_genre_id"
    t.index ["song_id"], name: "index_recordings_on_song_id"
  end

  create_table "release_acts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "act_id"
    t.bigint "release_id"
    t.index ["act_id"], name: "index_release_acts_on_act_id"
    t.index ["release_id"], name: "index_release_acts_on_release_id"
  end

  create_table "release_recordings", force: :cascade do |t|
    t.bigint "release_id", null: false
    t.bigint "recording_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "track_number"
    t.index ["recording_id"], name: "index_release_recordings_on_recording_id"
    t.index ["release_id"], name: "index_release_recordings_on_release_id"
  end

  create_table "release_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "releases", force: :cascade do |t|
    t.string "title"
    t.string "album_artist"
    t.date "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "format_id"
    t.bigint "territory_id"
    t.bigint "record_deal_id"
    t.bigint "release_type_id"
    t.index ["format_id"], name: "index_releases_on_format_id"
    t.index ["record_deal_id"], name: "index_releases_on_record_deal_id"
    t.index ["release_type_id"], name: "index_releases_on_release_type_id"
    t.index ["territory_id"], name: "index_releases_on_territory_id"
  end

  create_table "song_composers", force: :cascade do |t|
    t.bigint "musician_id", null: false
    t.bigint "song_id", null: false
    t.float "split"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["musician_id"], name: "index_song_composers_on_musician_id"
    t.index ["song_id"], name: "index_song_composers_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "iswc"
  end

  create_table "territories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.bigint "record_label_id"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["record_label_id"], name: "index_users_on_record_label_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "act_musicians", "acts"
  add_foreign_key "act_musicians", "musicians"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "playlist_recordings", "playlists"
  add_foreign_key "playlist_recordings", "recordings"
  add_foreign_key "record_deal_recordings", "record_deals"
  add_foreign_key "record_deal_recordings", "recordings"
  add_foreign_key "record_deals", "acts"
  add_foreign_key "record_deals", "record_labels"
  add_foreign_key "record_label_acts", "acts"
  add_foreign_key "record_label_acts", "record_labels"
  add_foreign_key "recording_acts", "acts"
  add_foreign_key "recording_acts", "recordings"
  add_foreign_key "recording_performers", "musicians"
  add_foreign_key "recording_performers", "recordings"
  add_foreign_key "recording_producers", "musicians"
  add_foreign_key "recording_producers", "recordings"
  add_foreign_key "recordings", "genres"
  add_foreign_key "recordings", "songs"
  add_foreign_key "release_acts", "acts"
  add_foreign_key "release_acts", "releases"
  add_foreign_key "release_recordings", "recordings"
  add_foreign_key "release_recordings", "releases"
  add_foreign_key "releases", "formats"
  add_foreign_key "releases", "record_deals"
  add_foreign_key "releases", "release_types"
  add_foreign_key "releases", "territories"
  add_foreign_key "song_composers", "musicians"
  add_foreign_key "song_composers", "songs"
  add_foreign_key "users", "record_labels"
end
