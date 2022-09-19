.class Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GameCenterProviderForTudou.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataBaseHeper"
.end annotation


# static fields
.field private static sInstance:Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const-string v0, "game_center.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 260
    return-void
.end method

.method public static declared-synchronized getInstace(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const-class v1, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;->sInstance:Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;->sInstance:Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;

    .line 255
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;->sInstance:Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 265
    const-string v0, "GameCenterProvider"

    const-string v1, "DataBaseHeper -> onCreate "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "CREATE TABLE gift_package (_id TEXT PRIMARY KEY,gift_id TEXT,package_name TEXT,game_name TEXT,gift_name TEXT,icon_url TEXT,gift_code TEXT,using_time TEXT,state TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v0, "CREATE TABLE exist_games (_id INTEGER PRIMARY KEY AUTOINCREMENT, list_key TEXT,game_id TEXT,game_package TEXT,game_show_times TEXT,game_status TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string v0, "CREATE TABLE home_recom_games (_id INTEGER PRIMARY KEY AUTOINCREMENT, list_key TEXT,game_id TEXT,game_package TEXT,game_show_times TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 294
    const-string v0, "GameCenterProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "DROP TABLE IF EXISTS gift_package"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string v0, "DROP TABLE IF EXISTS exist_games"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const-string v0, "DROP TABLE IF EXISTS home_recom_games"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 302
    return-void
.end method
