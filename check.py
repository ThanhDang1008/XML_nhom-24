import os, json
from jsonschema import validate, ValidationError, FormatChecker

JSON_DIR = "json"

def load(path):
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)

def find_schema_for(json_filename):
    name = os.path.splitext(json_filename)[0]  # lichchieu
    candidate = f"{name}_schema.json"
    candidate_path = os.path.join(JSON_DIR, candidate)
    if os.path.exists(candidate_path):
        return candidate_path
    # fallback: try schema with name 'schema_<name>.json'
    candidate2 = f"schema_{name}.json"
    candidate2_path = os.path.join(JSON_DIR, candidate2)
    if os.path.exists(candidate2_path):
        return candidate2_path
    return None

files = [f for f in os.listdir(JSON_DIR) if f.endswith(".json")]
json_files = [f for f in files if not f.endswith("_schema.json")]

for jf in json_files:
    jf_path = os.path.join(JSON_DIR, jf)
    schema_path = find_schema_for(jf)
    if not schema_path:
        print(f"⚠️  Bỏ qua {jf}: không tìm thấy schema tương ứng")
        continue

    data = load(jf_path)
    schema = load(schema_path)

    try:
        validate(instance=data, schema=schema, format_checker=FormatChecker())
        print(f"✅ {jf} hợp lệ theo {os.path.basename(schema_path)}")
    except ValidationError as e:
        print(f"❌ {jf} KHÔNG hợp lệ theo {os.path.basename(schema_path)}")
        print("  Lỗi:", e.message)
        print("  Path (dẫn tới giá trị lỗi):", list(e.path))
        print("  Schema path:", list(e.schema_path))
    except Exception as ex:
        print(f"❌ Lỗi không mong đợi khi kiểm {jf}: {ex}")
