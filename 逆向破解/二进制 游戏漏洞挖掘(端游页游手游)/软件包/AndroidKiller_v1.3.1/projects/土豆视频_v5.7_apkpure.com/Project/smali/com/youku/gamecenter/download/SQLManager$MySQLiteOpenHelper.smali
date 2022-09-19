.class Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/SQLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySQLiteOpenHelper"
.end annotation


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE gamecenter_download_list (package_name TEXT, url TEXT, title TEXT, progress INTEGER, icon TEXT, version INTEGER, duration INTEGER, source TEXT, path TEXT, gameid TEXT, statistics TEXT, last_modified TEXT, size INTEGER, type INTEGER, md5 TEXT, version_name TEXT, download_way INTEGER, click_state INTEGER, notification_id INTEGER, start_track TEXT, end_track TEXT, current_length INTEGER,UNIQUE (url) ON CONFLICT ABORT);"

.field private static final DB_VERSION:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/SQLManager;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/SQLManager;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->this$0:Lcom/youku/gamecenter/download/SQLManager;

    .line 394
    const-string v0, "game_center"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 395
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 398
    invoke-static {}, Lcom/youku/gamecenter/download/SQLManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CREATE TABLE gamecenter_download_list (package_name TEXT, url TEXT, title TEXT, progress INTEGER, icon TEXT, version INTEGER, duration INTEGER, source TEXT, path TEXT, gameid TEXT, statistics TEXT, last_modified TEXT, size INTEGER, type INTEGER, md5 TEXT, version_name TEXT, download_way INTEGER, click_state INTEGER, notification_id INTEGER, start_track TEXT, end_track TEXT, current_length INTEGER,UNIQUE (url) ON CONFLICT ABORT);"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "CREATE TABLE gamecenter_download_list (package_name TEXT, url TEXT, title TEXT, progress INTEGER, icon TEXT, version INTEGER, duration INTEGER, source TEXT, path TEXT, gameid TEXT, statistics TEXT, last_modified TEXT, size INTEGER, type INTEGER, md5 TEXT, version_name TEXT, download_way INTEGER, click_state INTEGER, notification_id INTEGER, start_track TEXT, end_track TEXT, current_length INTEGER,UNIQUE (url) ON CONFLICT ABORT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 448
    const-string v0, "DROP TABLE gamecenter_download_list;"

    .line 449
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    const-string v1, "CREATE TABLE gamecenter_download_list (package_name TEXT, url TEXT, title TEXT, progress INTEGER, icon TEXT, version INTEGER, duration INTEGER, source TEXT, path TEXT, gameid TEXT, statistics TEXT, last_modified TEXT, size INTEGER, type INTEGER, md5 TEXT, version_name TEXT, download_way INTEGER, click_state INTEGER, notification_id INTEGER, start_track TEXT, end_track TEXT, current_length INTEGER,UNIQUE (url) ON CONFLICT ABORT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v4, 0x3

    .line 404
    invoke-static {}, Lcom/youku/gamecenter/download/SQLManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade oldVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-ge p2, v4, :cond_1

    .line 407
    const-string v0, "DROP TABLE gamecenter_download_list;"

    .line 408
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    const-string v1, "CREATE TABLE gamecenter_download_list (package_name TEXT, url TEXT, title TEXT, progress INTEGER, icon TEXT, version INTEGER, duration INTEGER, source TEXT, path TEXT, gameid TEXT, statistics TEXT, last_modified TEXT, size INTEGER, type INTEGER, md5 TEXT, version_name TEXT, download_way INTEGER, click_state INTEGER, notification_id INTEGER, start_track TEXT, end_track TEXT, current_length INTEGER,UNIQUE (url) ON CONFLICT ABORT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    if-ne p2, v4, :cond_2

    .line 414
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN size INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    :cond_2
    const/4 v1, 0x4

    if-gt p2, v1, :cond_3

    .line 418
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN type INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN md5 TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    :cond_3
    const/4 v1, 0x5

    if-gt p2, v1, :cond_4

    .line 423
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN version_name TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    :cond_4
    const/4 v1, 0x6

    if-gt p2, v1, :cond_5

    .line 427
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN download_way INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    :cond_5
    const/4 v1, 0x7

    if-gt p2, v1, :cond_6

    .line 431
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN click_state INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN notification_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    :cond_6
    const/16 v1, 0x8

    if-gt p2, v1, :cond_7

    .line 436
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN start_track TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN end_track TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    :cond_7
    const/16 v1, 0x9

    if-gt p2, v1, :cond_0

    .line 441
    const-string v1, "ALTER TABLE gamecenter_download_list ADD COLUMN current_length INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method
