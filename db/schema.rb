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

ActiveRecord::Schema[7.1].define(version: 2024_01_04_091532) do
  create_table "shifts", force: :cascade do |t|
    t.integer "people_needed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "week_day_0_0", default: 0
    t.integer "week_day_0_1", default: 0
    t.integer "week_day_0_2", default: 0
    t.integer "week_day_0_3", default: 0
    t.integer "week_day_0_4", default: 0
    t.integer "week_day_0_5", default: 0
    t.integer "week_day_0_6", default: 0
    t.integer "week_day_1_0", default: 0
    t.integer "week_day_1_1", default: 0
    t.integer "week_day_1_2", default: 0
    t.integer "week_day_1_3", default: 0
    t.integer "week_day_1_4", default: 0
    t.integer "week_day_1_5", default: 0
    t.integer "week_day_1_6", default: 0
    t.integer "week_day_2_0", default: 0
    t.integer "week_day_2_1", default: 0
    t.integer "week_day_2_2", default: 0
    t.integer "week_day_2_3", default: 0
    t.integer "week_day_2_4", default: 0
    t.integer "week_day_2_5", default: 0
    t.integer "week_day_2_6", default: 0
    t.integer "week_day_3_0", default: 0
    t.integer "week_day_3_1", default: 0
    t.integer "week_day_3_2", default: 0
    t.integer "week_day_3_3", default: 0
    t.integer "week_day_3_4", default: 0
    t.integer "week_day_3_5", default: 0
    t.integer "week_day_3_6", default: 0
    t.integer "week_day_4_0", default: 0
    t.integer "week_day_4_1", default: 0
    t.integer "week_day_4_2", default: 0
    t.integer "week_day_4_3", default: 0
    t.integer "week_day_4_4", default: 0
    t.integer "week_day_4_5", default: 0
    t.integer "week_day_4_6", default: 0
    t.integer "week_day_5_0", default: 0
    t.integer "week_day_5_1", default: 0
    t.integer "week_day_5_2", default: 0
    t.integer "week_day_5_3", default: 0
    t.integer "week_day_5_4", default: 0
    t.integer "week_day_5_5", default: 0
    t.integer "week_day_5_6", default: 0
    t.integer "week_day_6_0", default: 0
    t.integer "week_day_6_1", default: 0
    t.integer "week_day_6_2", default: 0
    t.integer "week_day_6_3", default: 0
    t.integer "week_day_6_4", default: 0
    t.integer "week_day_6_5", default: 0
    t.integer "week_day_6_6", default: 0
    t.integer "week_day_7_0", default: 0
    t.integer "week_day_7_1", default: 0
    t.integer "week_day_7_2", default: 0
    t.integer "week_day_7_3", default: 0
    t.integer "week_day_7_4", default: 0
    t.integer "week_day_7_5", default: 0
    t.integer "week_day_7_6", default: 0
    t.integer "week_day_8_0", default: 0
    t.integer "week_day_8_1", default: 0
    t.integer "week_day_8_2", default: 0
    t.integer "week_day_8_3", default: 0
    t.integer "week_day_8_4", default: 0
    t.integer "week_day_8_5", default: 0
    t.integer "week_day_8_6", default: 0
    t.integer "week_day_9_0", default: 0
    t.integer "week_day_9_1", default: 0
    t.integer "week_day_9_2", default: 0
    t.integer "week_day_9_3", default: 0
    t.integer "week_day_9_4", default: 0
    t.integer "week_day_9_5", default: 0
    t.integer "week_day_9_6", default: 0
    t.integer "week_day_10_0", default: 0
    t.integer "week_day_10_1", default: 0
    t.integer "week_day_10_2", default: 0
    t.integer "week_day_10_3", default: 0
    t.integer "week_day_10_4", default: 0
    t.integer "week_day_10_5", default: 0
    t.integer "week_day_10_6", default: 0
    t.integer "week_day_11_0", default: 0
    t.integer "week_day_11_1", default: 0
    t.integer "week_day_11_2", default: 0
    t.integer "week_day_11_3", default: 0
    t.integer "week_day_11_4", default: 0
    t.integer "week_day_11_5", default: 0
    t.integer "week_day_11_6", default: 0
    t.integer "week_day_12_0", default: 0
    t.integer "week_day_12_1", default: 0
    t.integer "week_day_12_2", default: 0
    t.integer "week_day_12_3", default: 0
    t.integer "week_day_12_4", default: 0
    t.integer "week_day_12_5", default: 0
    t.integer "week_day_12_6", default: 0
    t.integer "week_day_13_0", default: 0
    t.integer "week_day_13_1", default: 0
    t.integer "week_day_13_2", default: 0
    t.integer "week_day_13_3", default: 0
    t.integer "week_day_13_4", default: 0
    t.integer "week_day_13_5", default: 0
    t.integer "week_day_13_6", default: 0
    t.integer "week_day_14_0", default: 0
    t.integer "week_day_14_1", default: 0
    t.integer "week_day_14_2", default: 0
    t.integer "week_day_14_3", default: 0
    t.integer "week_day_14_4", default: 0
    t.integer "week_day_14_5", default: 0
    t.integer "week_day_14_6", default: 0
    t.integer "week_day_15_0", default: 0
    t.integer "week_day_15_1", default: 0
    t.integer "week_day_15_2", default: 0
    t.integer "week_day_15_3", default: 0
    t.integer "week_day_15_4", default: 0
    t.integer "week_day_15_5", default: 0
    t.integer "week_day_15_6", default: 0
    t.integer "week_day_16_0", default: 0
    t.integer "week_day_16_1", default: 0
    t.integer "week_day_16_2", default: 0
    t.integer "week_day_16_3", default: 0
    t.integer "week_day_16_4", default: 0
    t.integer "week_day_16_5", default: 0
    t.integer "week_day_16_6", default: 0
    t.integer "week_day_17_0", default: 0
    t.integer "week_day_17_1", default: 0
    t.integer "week_day_17_2", default: 0
    t.integer "week_day_17_3", default: 0
    t.integer "week_day_17_4", default: 0
    t.integer "week_day_17_5", default: 0
    t.integer "week_day_17_6", default: 0
    t.integer "week_day_18_0", default: 0
    t.integer "week_day_18_1", default: 0
    t.integer "week_day_18_2", default: 0
    t.integer "week_day_18_3", default: 0
    t.integer "week_day_18_4", default: 0
    t.integer "week_day_18_5", default: 0
    t.integer "week_day_18_6", default: 0
    t.integer "week_day_19_0", default: 0
    t.integer "week_day_19_1", default: 0
    t.integer "week_day_19_2", default: 0
    t.integer "week_day_19_3", default: 0
    t.integer "week_day_19_4", default: 0
    t.integer "week_day_19_5", default: 0
    t.integer "week_day_19_6", default: 0
    t.integer "week_day_20_0", default: 0
    t.integer "week_day_20_1", default: 0
    t.integer "week_day_20_2", default: 0
    t.integer "week_day_20_3", default: 0
    t.integer "week_day_20_4", default: 0
    t.integer "week_day_20_5", default: 0
    t.integer "week_day_20_6", default: 0
    t.integer "week_day_21_0", default: 0
    t.integer "week_day_21_1", default: 0
    t.integer "week_day_21_2", default: 0
    t.integer "week_day_21_3", default: 0
    t.integer "week_day_21_4", default: 0
    t.integer "week_day_21_5", default: 0
    t.integer "week_day_21_6", default: 0
    t.integer "week_day_22_0", default: 0
    t.integer "week_day_22_1", default: 0
    t.integer "week_day_22_2", default: 0
    t.integer "week_day_22_3", default: 0
    t.integer "week_day_22_4", default: 0
    t.integer "week_day_22_5", default: 0
    t.integer "week_day_22_6", default: 0
    t.integer "week_day_23_0", default: 0
    t.integer "week_day_23_1", default: 0
    t.integer "week_day_23_2", default: 0
    t.integer "week_day_23_3", default: 0
    t.integer "week_day_23_4", default: 0
    t.integer "week_day_23_5", default: 0
    t.integer "week_day_23_6", default: 0
    t.integer "week_day_24_0", default: 0
    t.integer "week_day_24_1", default: 0
    t.integer "week_day_24_2", default: 0
    t.integer "week_day_24_3", default: 0
    t.integer "week_day_24_4", default: 0
    t.integer "week_day_24_5", default: 0
    t.integer "week_day_24_6", default: 0
    t.integer "week_day_25_0", default: 0
    t.integer "week_day_25_1", default: 0
    t.integer "week_day_25_2", default: 0
    t.integer "week_day_25_3", default: 0
    t.integer "week_day_25_4", default: 0
    t.integer "week_day_25_5", default: 0
    t.integer "week_day_25_6", default: 0
    t.integer "week_day_26_0", default: 0
    t.integer "week_day_26_1", default: 0
    t.integer "week_day_26_2", default: 0
    t.integer "week_day_26_3", default: 0
    t.integer "week_day_26_4", default: 0
    t.integer "week_day_26_5", default: 0
    t.integer "week_day_26_6", default: 0
    t.integer "week_day_27_0", default: 0
    t.integer "week_day_27_1", default: 0
    t.integer "week_day_27_2", default: 0
    t.integer "week_day_27_3", default: 0
    t.integer "week_day_27_4", default: 0
    t.integer "week_day_27_5", default: 0
    t.integer "week_day_27_6", default: 0
    t.integer "week_day_28_0", default: 0
    t.integer "week_day_28_1", default: 0
    t.integer "week_day_28_2", default: 0
    t.integer "week_day_28_3", default: 0
    t.integer "week_day_28_4", default: 0
    t.integer "week_day_28_5", default: 0
    t.integer "week_day_28_6", default: 0
    t.integer "week_day_29_0", default: 0
    t.integer "week_day_29_1", default: 0
    t.integer "week_day_29_2", default: 0
    t.integer "week_day_29_3", default: 0
    t.integer "week_day_29_4", default: 0
    t.integer "week_day_29_5", default: 0
    t.integer "week_day_29_6", default: 0
    t.integer "week_day_30_0", default: 0
    t.integer "week_day_30_1", default: 0
    t.integer "week_day_30_2", default: 0
    t.integer "week_day_30_3", default: 0
    t.integer "week_day_30_4", default: 0
    t.integer "week_day_30_5", default: 0
    t.integer "week_day_30_6", default: 0
    t.integer "week_day_31_0", default: 0
    t.integer "week_day_31_1", default: 0
    t.integer "week_day_31_2", default: 0
    t.integer "week_day_31_3", default: 0
    t.integer "week_day_31_4", default: 0
    t.integer "week_day_31_5", default: 0
    t.integer "week_day_31_6", default: 0
    t.integer "week_day_32_0", default: 0
    t.integer "week_day_32_1", default: 0
    t.integer "week_day_32_2", default: 0
    t.integer "week_day_32_3", default: 0
    t.integer "week_day_32_4", default: 0
    t.integer "week_day_32_5", default: 0
    t.integer "week_day_32_6", default: 0
    t.integer "week_day_33_0", default: 0
    t.integer "week_day_33_1", default: 0
    t.integer "week_day_33_2", default: 0
    t.integer "week_day_33_3", default: 0
    t.integer "week_day_33_4", default: 0
    t.integer "week_day_33_5", default: 0
    t.integer "week_day_33_6", default: 0
    t.integer "week_day_34_0", default: 0
    t.integer "week_day_34_1", default: 0
    t.integer "week_day_34_2", default: 0
    t.integer "week_day_34_3", default: 0
    t.integer "week_day_34_4", default: 0
    t.integer "week_day_34_5", default: 0
    t.integer "week_day_34_6", default: 0
    t.integer "week_day_35_0", default: 0
    t.integer "week_day_35_1", default: 0
    t.integer "week_day_35_2", default: 0
    t.integer "week_day_35_3", default: 0
    t.integer "week_day_35_4", default: 0
    t.integer "week_day_35_5", default: 0
    t.integer "week_day_35_6", default: 0
    t.integer "week_day_36_0", default: 0
    t.integer "week_day_36_1", default: 0
    t.integer "week_day_36_2", default: 0
    t.integer "week_day_36_3", default: 0
    t.integer "week_day_36_4", default: 0
    t.integer "week_day_36_5", default: 0
    t.integer "week_day_36_6", default: 0
    t.integer "week_day_37_0", default: 0
    t.integer "week_day_37_1", default: 0
    t.integer "week_day_37_2", default: 0
    t.integer "week_day_37_3", default: 0
    t.integer "week_day_37_4", default: 0
    t.integer "week_day_37_5", default: 0
    t.integer "week_day_37_6", default: 0
    t.integer "week_day_38_0", default: 0
    t.integer "week_day_38_1", default: 0
    t.integer "week_day_38_2", default: 0
    t.integer "week_day_38_3", default: 0
    t.integer "week_day_38_4", default: 0
    t.integer "week_day_38_5", default: 0
    t.integer "week_day_38_6", default: 0
    t.integer "week_day_39_0", default: 0
    t.integer "week_day_39_1", default: 0
    t.integer "week_day_39_2", default: 0
    t.integer "week_day_39_3", default: 0
    t.integer "week_day_39_4", default: 0
    t.integer "week_day_39_5", default: 0
    t.integer "week_day_39_6", default: 0
    t.integer "week_day_40_0", default: 0
    t.integer "week_day_40_1", default: 0
    t.integer "week_day_40_2", default: 0
    t.integer "week_day_40_3", default: 0
    t.integer "week_day_40_4", default: 0
    t.integer "week_day_40_5", default: 0
    t.integer "week_day_40_6", default: 0
    t.integer "week_day_41_0", default: 0
    t.integer "week_day_41_1", default: 0
    t.integer "week_day_41_2", default: 0
    t.integer "week_day_41_3", default: 0
    t.integer "week_day_41_4", default: 0
    t.integer "week_day_41_5", default: 0
    t.integer "week_day_41_6", default: 0
    t.integer "week_day_42_0", default: 0
    t.integer "week_day_42_1", default: 0
    t.integer "week_day_42_2", default: 0
    t.integer "week_day_42_3", default: 0
    t.integer "week_day_42_4", default: 0
    t.integer "week_day_42_5", default: 0
    t.integer "week_day_42_6", default: 0
    t.integer "week_day_43_0", default: 0
    t.integer "week_day_43_1", default: 0
    t.integer "week_day_43_2", default: 0
    t.integer "week_day_43_3", default: 0
    t.integer "week_day_43_4", default: 0
    t.integer "week_day_43_5", default: 0
    t.integer "week_day_43_6", default: 0
    t.integer "week_day_44_0", default: 0
    t.integer "week_day_44_1", default: 0
    t.integer "week_day_44_2", default: 0
    t.integer "week_day_44_3", default: 0
    t.integer "week_day_44_4", default: 0
    t.integer "week_day_44_5", default: 0
    t.integer "week_day_44_6", default: 0
    t.integer "week_day_45_0", default: 0
    t.integer "week_day_45_1", default: 0
    t.integer "week_day_45_2", default: 0
    t.integer "week_day_45_3", default: 0
    t.integer "week_day_45_4", default: 0
    t.integer "week_day_45_5", default: 0
    t.integer "week_day_45_6", default: 0
    t.integer "week_day_46_0", default: 0
    t.integer "week_day_46_1", default: 0
    t.integer "week_day_46_2", default: 0
    t.integer "week_day_46_3", default: 0
    t.integer "week_day_46_4", default: 0
    t.integer "week_day_46_5", default: 0
    t.integer "week_day_46_6", default: 0
    t.integer "week_day_47_0", default: 0
    t.integer "week_day_47_1", default: 0
    t.integer "week_day_47_2", default: 0
    t.integer "week_day_47_3", default: 0
    t.integer "week_day_47_4", default: 0
    t.integer "week_day_47_5", default: 0
    t.integer "week_day_47_6", default: 0
  end

  create_table "worker_desires", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.time "start_time_monday"
    t.time "end_time_monday"
    t.time "start_time_tuesday"
    t.time "end_time_tuesday"
    t.time "start_time_wednesday"
    t.time "end_time_wednesday"
    t.time "start_time_thursday"
    t.time "end_time_thursday"
    t.time "start_time_friday"
    t.time "end_time_friday"
    t.time "start_time_saturday"
    t.time "end_time_saturday"
    t.time "start_time_sunday"
    t.time "end_time_sunday"
    t.integer "shift_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_worker_desires_on_shift_id"
  end

  add_foreign_key "worker_desires", "shifts"
end
