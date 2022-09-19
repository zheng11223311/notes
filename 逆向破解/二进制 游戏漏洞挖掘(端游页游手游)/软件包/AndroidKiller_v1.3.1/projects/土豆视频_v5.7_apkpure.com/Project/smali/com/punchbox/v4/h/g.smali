.class Lcom/punchbox/v4/h/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "create table report_t (id                INTEGER PRIMARY KEY AUTOINCREMENT,url               TEXT NOT NULL, reportJsonData    text default\'\',type              text not null,createTime        numeric default 0,status            integer default 0);"

    aput-object v1, v0, v3

    const-string v1, "CREATE TABLE IF NOT EXISTS download (id INTEGER PRIMARY KEY AUTOINCREMENT,file_name TEXT NOT NULL,file_path TEXT NOT NULL,url TEXT UNIQUE NOT NULL,pkg_name TEXT,version TEXT,total_size INTEGER DEFAULT 0,network_type INTEGER,request_time INTEGER,download_status INTEGER DEFAULT 0,adInfo TEXT NOT NULL, failed_count INTEGER DEFAULT 0);"

    aput-object v1, v0, v4

    const-string v1, "CREATE TABLE IF NOT EXISTS download_detail(id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL,download_index INTEGER NOT NULL,from_position INTEGER NOT NULL,to_position INTEGER NOT NULL,buffer_received INTEGER NOT NULL);"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "CREATE TABLE IF NOT EXISTS download_complete_t(packageName TEXT UNIQUE NOT NULL,url TEXT NOT NULL,fileName TEXT NOT NULL,adInfo TEXT NOT NULL);"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CREATE TABLE IF NOT EXISTS pre_download_t(id INTEGER PRIMARY KEY AUTOINCREMENT,adtype INTEGER NOT NULL,adinfo TEXT NOT NULL,appinfo TEXT NOT NULL, remote_image TEXT NOT NULL,apk_url TEXT UNIQUE,ad_res_download_status BIT DEFAULT 0 ,ad_apk_download_status BIT DEFAULT 0 ,ad_apk_installed_status BIT DEFAULT 0 ,ad_progress_down_status BIT DEFAULT 0 ,ad_install_adtype INTEGER DEFAULT 0,ad_expire Long DEFAULT 4131316860)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/punchbox/v4/h/g;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "CREATE TRIGGER IF NOT EXISTS download_trigger DELETE ON download BEGIN DELETE FROM download_detail where download_id = old.id;END;"

    aput-object v1, v0, v3

    const-string v1, "CREATE TRIGGER IF NOT EXISTS download_complete_trigger BEFORE DELETE ON download BEGIN DELETE FROM download_complete_t where download_complete_t.packageName=OLD.pkg_name;INSERT INTO download_complete_t(packageName,url,fileName,adinfo) VALUES(OLD.pkg_name,OLD.url,OLD.file_name,OLD.adInfo);END"

    aput-object v1, v0, v4

    sput-object v0, Lcom/punchbox/v4/h/g;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CREATE TABLE IF NOT EXISTS pre_download_t(id INTEGER PRIMARY KEY AUTOINCREMENT,adtype INTEGER NOT NULL,adinfo TEXT NOT NULL,appinfo TEXT NOT NULL, remote_image TEXT NOT NULL,apk_url TEXT UNIQUE,ad_res_download_status BIT DEFAULT 0 ,ad_apk_download_status BIT DEFAULT 0 ,ad_apk_installed_status BIT DEFAULT 0 ,ad_progress_down_status BIT DEFAULT 0 ,ad_install_adtype INTEGER DEFAULT 0,ad_expire Long DEFAULT 4131316860)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/punchbox/v4/h/g;->c:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/punchbox/v4/h/g;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/h/g;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/h/g;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/h/g;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/v4/h/g;->d:[Ljava/lang/String;

    return-object v0
.end method
