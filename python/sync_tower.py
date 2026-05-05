import requests
import pandas as pd
import re
import pymysql
from datetime import datetime

# ==========================
# HELPERS
# ==========================
def normalize_text(val):
    if pd.isna(val):
        return None

    val = str(val)

    replacements = {
        u"≥": ">=",
        u"≤": "<=",
        u"–": "-",
        u"—": "-",
        u"â‰¥": ">=",
        u"â‰¤": "<=",
        u"\u200e": "",
        u"\u200f": "",
        u"\xa0": " "
    }

    for k, v in replacements.items():
        val = val.replace(k, v)

    # buang karakter non-latin1
    val = val.encode("latin1", "ignore").decode("latin1")

    return val.strip()
def clean_value(val):
    if pd.isna(val):
        return None
    return normalize_text(val)


# ==========================
# CONFIG
# ==========================

ONEDRIVE_URL = "https://onedrive.live.com/:x:/g/personal/48ac502c98c0e11c/IQDmbyHhC8wwQrKG7wGfQfPZAXLW8mocEe2ZlY3omRkFye4?rtime=g342NHCo3kg&redeem=aHR0cHM6Ly8xZHJ2Lm1zL3gvYy80OGFjNTAyYzk4YzBlMTFjL0lRRG1ieUhoQzh3d1FyS0c3d0dmUWZQWkFYTFc4bW9jRWUyWmxZM29tUmtGeWU0P2U9Y2xRcnlr&download=1"
OUTPUT_FILE = "tower.xlsx"

DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "saturday",
    "database": "tower",
    "charset": "latin1"
}


# ==========================
# COLUMN MAP
# ==========================

COL_SITE_ID = "SITE ID BARU"
COL_SITE_NAME = "Name Site"
COL_EOC = "EOC"
COL_GENERAL_STATUS = "General Status"
COL_DETAIL_PROGRESS = "Detail Progress"
COL_optim_or_not = "Not Optimis/ Optimis"
COL_target_rfi = "Target RFI"
COL_target_mitra = " Target  Mitra"
COL_forcast = "FORCAST"
COL_mitra_pleno_mkt = "Mitra Pleno MKT"
COL_mitra_pleno_mk = "Mitra Pleno MK"
COL_long_ext = "Long (Eksisting)"
COL_lat_ext = "Lat (Eksisting)"
COL_alamat_ext = "Alamat (Eksisting)"
COL_long_new = "Long (New)"
COL_lat_new = "Lat (New)"
COL_alamat_new = "Alamat (New)"
COL_tower_ext = "Tower Eksisting"
COL_lahan_ext = "Lahan Eksisting"
COL_tipe_tower_ext = "Tipe Tower (New)"
COL_program_update = "PROGRAM UPDATE"
COL_luas_lahan = "Luas Lahan"
COL_harga_lahan = "Harga Lahan (Total)"
COL_remarks = "Remarks"
COL_tower = "Tower"
COL_jenis_tower = "Jenis Tower"
COL_panjang_lahan = "Panjang Lahan"
COL_lebar_lahan = "Lebar Lahan"
COL_total_lahan = "Total Lahan"
COL_drm_extend = "DRM EXTEND "
COL_status_update_program = "STATUS UPDATE PROGRAM 04/03/2026"


# ==========================
# DB
# ==========================

def get_conn():
    return pymysql.connect(**DB_CONFIG)


# ==========================
# DOWNLOAD EXCEL
# ==========================

def download_excel():
    print("Downloading excel...")

    response = requests.get(ONEDRIVE_URL)

    if response.status_code == 200:
        with open(OUTPUT_FILE, "wb") as f:
            f.write(response.content)
        print("Download success")
    else:
        raise Exception("Download gagal")


# ==========================
# DATE PARSER
# ==========================

def parse_date(date_str):
    date_str = str(date_str).replace(".", "/")

    formats = [
        "%d/%m/%y",
        "%d/%m/%Y"
    ]

    for fmt in formats:
        try:
            return datetime.strptime(
                date_str.strip(),
                fmt
            ).strftime("%Y-%m-%d")
        except:
            pass

    return None


# ==========================
# PROGRESS PARSER
# ==========================

def parse_progress(text):
    if pd.isna(text):
        return []

    text = str(text)

    text = re.sub(
        r'^\d+\.\s*',
        '',
        text,
        flags=re.MULTILINE
    )

    pattern = r'(\d{1,2}[\/\.]\d{1,2}[\/\.]?\d{0,4})\s*:\s*(.+)'

    matches = re.findall(pattern, text)

    results = []

    for date_str, note in matches:
        parsed_date = parse_date(date_str)

        if parsed_date:
            results.append({
                "progress_date": parsed_date,
                "progress_note": note.strip()
            })

    return results


# ==========================
# SAVE MASTER
# ==========================

def save_site(conn, row):
    sql = """
    INSERT INTO dash_tower_site (
        site_id_baru,
        nama_site,
        eoc,
        general_status,
        detail_progress,
        optim_or_not,
        target_rfi,
        target_mitra,
        forcast,
        mitra_pleno_mkt,
        mitra_pleno_mk,
        long_ext,
        lat_ext,
        alamat_ext,
        long_new,
        lat_new,
        alamat_new,
        tower_ext,
        lahan_ext,
        tipe_tower_ext,
        program_update,
        luas_lahan,
        harga_lahan,
        remarks,
        tower,
        jenis_tower,
        panjang_lahan,
        lebar_lahan,
        total_lahan,
        drm_extend,
        status_update_program
    )
    VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)

    ON DUPLICATE KEY UPDATE
        nama_site=VALUES(nama_site),
        eoc=VALUES(eoc),
        general_status=VALUES(general_status),
        detail_progress=VALUES(detail_progress)
    """

    values = (
        clean_value(row.get(COL_SITE_ID)),
        clean_value(row.get(COL_SITE_NAME)),
        clean_value(row.get(COL_EOC)),
        clean_value(row.get(COL_GENERAL_STATUS)),
        clean_value(row.get(COL_DETAIL_PROGRESS)),
        clean_value(row.get(COL_optim_or_not)),
        clean_value(row.get(COL_target_rfi)),
        clean_value(row.get(COL_target_mitra)),
        clean_value(row.get(COL_forcast)),
        clean_value(row.get(COL_mitra_pleno_mkt)),
        clean_value(row.get(COL_mitra_pleno_mk)),
        clean_value(row.get(COL_long_ext)),
        clean_value(row.get(COL_lat_ext)),
        clean_value(row.get(COL_alamat_ext)),
        clean_value(row.get(COL_long_new)),
        clean_value(row.get(COL_lat_new)),
        clean_value(row.get(COL_alamat_new)),
        clean_value(row.get(COL_tower_ext)),
        clean_value(row.get(COL_lahan_ext)),
        clean_value(row.get(COL_tipe_tower_ext)),
        clean_value(row.get(COL_program_update)),
        clean_value(row.get(COL_luas_lahan)),
        clean_value(row.get(COL_harga_lahan)),
        clean_value(row.get(COL_remarks)),
        clean_value(row.get(COL_tower)),
        clean_value(row.get(COL_jenis_tower)),
        clean_value(row.get(COL_panjang_lahan)),
        clean_value(row.get(COL_lebar_lahan)),
        clean_value(row.get(COL_total_lahan)),
        clean_value(row.get(COL_drm_extend)),
        clean_value(row.get(COL_status_update_program))
    )

    with conn.cursor() as cur:
        cur.execute(sql, values)


# ==========================
# SAVE PROGRESS
# ==========================

def save_progress(conn, site_id, entry, general_status):
    sql = """
    INSERT IGNORE INTO dash_tower_site_progress (
        site_id,
        progress_date,
        progress_note,
        general_status
    )
    VALUES (%s,%s,%s,%s)
    """

    with conn.cursor() as cur:
        cur.execute(sql, (
            clean_value(site_id),
            clean_value(entry["progress_date"]),
            clean_value(entry["progress_note"]),
            clean_value(general_status)
        ))


# ==========================
# PROCESS EXCEL
# ==========================

def process_excel():
    conn = get_conn()

    df = pd.read_excel(
        OUTPUT_FILE,
        sheet_name="JABODETABEB RESCOPING ALL 309",
        header=1,
        engine="openpyxl"
    )

    total_progress = 0

    for _, row in df.iterrows():

        site_id = row.get(COL_SITE_ID)

        if pd.isna(site_id):
            continue

        save_site(conn, row)

        progress_entries = parse_progress(
            row.get(COL_DETAIL_PROGRESS, "")
        )

        for entry in progress_entries:
            save_progress(
                conn,
                site_id,
                entry,
                row.get(COL_GENERAL_STATUS)
            )
            total_progress += 1

    conn.commit()
    conn.close()

    print("Done. Progress inserted: {}".format(total_progress))


# ==========================
# MAIN
# ==========================

if __name__ == "__main__":
    try:
        download_excel()
        process_excel()
    except Exception as e:
        print("ERROR:", str(e))