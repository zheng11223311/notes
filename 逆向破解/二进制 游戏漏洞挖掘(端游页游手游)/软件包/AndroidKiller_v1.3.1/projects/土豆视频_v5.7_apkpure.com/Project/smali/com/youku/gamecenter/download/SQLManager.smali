.class public Lcom/youku/gamecenter/download/SQLManager;
.super Ljava/lang/Object;
.source "SQLManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/download/SQLManager$1;,
        Lcom/youku/gamecenter/download/SQLManager$SingletonHolder;,
        Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_CLICK_STATE:Ljava/lang/String; = "click_state"

.field private static final COLUMN_CURRENT_LENGTH:Ljava/lang/String; = "current_length"

.field private static final COLUMN_DOWNLOAD_WAY:Ljava/lang/String; = "download_way"

.field private static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field private static final COLUMN_END_TRACK:Ljava/lang/String; = "end_track"

.field private static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field private static final COLUMN_ID:Ljava/lang/String; = "gameid"

.field private static final COLUMN_LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field private static final COLUMN_MD5:Ljava/lang/String; = "md5"

.field private static final COLUMN_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final COLUMN_PATH:Ljava/lang/String; = "path"

.field private static final COLUMN_PROGRESS:Ljava/lang/String; = "progress"

.field private static final COLUMN_SIZE:Ljava/lang/String; = "size"

.field private static final COLUMN_SOURCE:Ljava/lang/String; = "source"

.field private static final COLUMN_START_TRACK:Ljava/lang/String; = "start_track"

.field private static final COLUMN_STATISTIC:Ljava/lang/String; = "statistics"

.field private static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field private static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN_URL:Ljava/lang/String; = "url"

.field private static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final COLUMN_VERSION_NAME:Ljava/lang/String; = "version_name"

.field private static final DATABASE_NAME:Ljava/lang/String; = "game_center"

.field private static final FORMAT_TIME:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final TABLE_NAME:Ljava/lang/String; = "gamecenter_download_list"

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAllColumn:[Ljava/lang/String;

.field private mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/youku/gamecenter/download/SQLManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "progress"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "path"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gameid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "statistics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "version_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "download_way"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "click_state"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "notification_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "start_track"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "end_track"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "current_length"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/youku/gamecenter/download/SQLManager;->mAllColumn:[Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    sget-object v1, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;-><init>(Lcom/youku/gamecenter/download/SQLManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/gamecenter/download/SQLManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/gamecenter/download/SQLManager$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/youku/gamecenter/download/SQLManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 380
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/youku/gamecenter/util/FileUtils;->getIconFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    :cond_0
    return-void
.end method

.method public static getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 60
    sput-object p0, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    .line 61
    :cond_1
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager$SingletonHolder;->INSTANCE:Lcom/youku/gamecenter/download/SQLManager;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string/jumbo v1, "url=?"

    .line 237
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 238
    .local v0, "arrayOfString":[Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->close()V

    .line 387
    return-void
.end method

.method public getAdvDownload()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const-string v5, "package_name is null"

    .line 245
    .local v5, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/SQLManager;->mAllColumn:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 247
    .local v33, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    const/16 v32, 0x0

    .line 249
    .local v32, "advDownloadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    :goto_0
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    if-nez v32, :cond_0

    .line 251
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "advDownloadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .restart local v32    # "advDownloadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    :cond_0
    new-instance v6, Lcom/youku/gamecenter/download/DownloadInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x3

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x4

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v2, 0x5

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x7

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x8

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x9

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0xa

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0xb

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v2, 0xc

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v2, 0xd

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v2, 0xe

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0xf

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v2, 0x10

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v2, 0x11

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v2, 0x12

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v2, 0x14

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v2, 0x15

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-direct/range {v6 .. v31}, Lcom/youku/gamecenter/download/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;J)V

    .line 261
    .local v6, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    const/4 v2, 0x1

    iput v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 262
    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdvDownload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 266
    .end local v6    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 267
    return-object v32
.end method

.method public getAll()Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v33, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v34, "notExsist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    const/16 v28, 0x0

    .line 285
    .local v28, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v3}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/SQLManager;->mAllColumn:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 288
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_b

    .line 297
    new-instance v2, Lcom/youku/gamecenter/download/DownloadInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x5

    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    move-object/from16 v0, v28

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x7

    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0xc

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0xd

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xe

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xf

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0x11

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x12

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x13

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x14

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x15

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-direct/range {v2 .. v27}, Lcom/youku/gamecenter/download/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;J)V

    .line 306
    .local v2, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 307
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 289
    .end local v2    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :catch_0
    move-exception v29

    .line 290
    .local v29, "e":Ljava/lang/Exception;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    if-eqz v28, :cond_0

    .line 292
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 376
    .end local v29    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v33

    .line 311
    .restart local v2    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_1
    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    .line 312
    const/4 v3, 0x4

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 319
    :goto_1
    const-string v3, "GameCenter"

    const-string v4, "SQLManager->getAll   call SystemUtils.isMounted()"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 323
    iget-object v0, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 324
    .local v35, "path":Ljava/lang/String;
    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 327
    :cond_2
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v30, "file":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 329
    sget-object v3, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not exist when get:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 331
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/youku/gamecenter/download/SQLManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 313
    .end local v30    # "file":Ljava/io/File;
    .end local v35    # "path":Ljava/lang/String;
    :cond_3
    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 314
    const/4 v3, 0x6

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    goto :goto_1

    .line 316
    :cond_4
    const/4 v3, 0x3

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    goto :goto_1

    .line 337
    .restart local v30    # "file":Ljava/io/File;
    .restart local v35    # "path":Ljava/lang/String;
    :cond_5
    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 338
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 343
    :cond_6
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    sget-object v5, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/youku/gamecenter/util/SystemUtils;->isLatestInstalled(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_8

    .line 348
    const/4 v3, 0x0

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 349
    const/4 v3, 0x5

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 366
    .end local v30    # "file":Ljava/io/File;
    .end local v35    # "path":Ljava/lang/String;
    :cond_7
    :goto_2
    sget-object v3, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 350
    .restart local v30    # "file":Ljava/io/File;
    .restart local v35    # "path":Ljava/lang/String;
    :cond_8
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    sget-object v4, Lcom/youku/gamecenter/download/SQLManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/SystemUtils;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 351
    const/4 v3, 0x0

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 352
    const/4 v3, 0x5

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    goto :goto_2

    .line 354
    :cond_9
    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 359
    :cond_a
    iget v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_7

    iget-wide v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 361
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    goto :goto_2

    .line 371
    .end local v2    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v30    # "file":Ljava/io/File;
    .end local v35    # "path":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 372
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 373
    .local v32, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/youku/gamecenter/download/SQLManager;->deleteIcon(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/youku/gamecenter/download/SQLManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getLastModified(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v10, 0x0

    .line 215
    .local v10, "date":Ljava/util/Date;
    const-string/jumbo v3, "url=?"

    .line 216
    .local v3, "str1":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 217
    .local v4, "arrayOfString":[Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "gamecenter_download_list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "last_modified"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 220
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, "str2":Ljava/lang/String;
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastModified("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 231
    .end local v12    # "str2":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    return-object v10

    .line 227
    .restart local v12    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 228
    .local v11, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProgress(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v10, v11

    .line 159
    :goto_0
    return v10

    .line 148
    :cond_0
    const/4 v10, -0x1

    .line 149
    .local v10, "progress":I
    const-string/jumbo v3, "url=?"

    .line 150
    .local v3, "str":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    aput-object p2, v4, v11

    .line 151
    .local v4, "arrayOfString":[Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "gamecenter_download_list"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "progress"

    aput-object v6, v2, v11

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 154
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 158
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getSilentDownload(IZ)Ljava/util/List;
    .locals 35
    .param p1, "type"    # I
    .param p2, "isGetAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "str":Ljava/lang/String;
    const/16 v32, 0x0

    .line 463
    .local v32, "cursor":Landroid/database/Cursor;
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v34, "silentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/gamecenter/download/SQLManager;->mAllColumn:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 467
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 476
    new-instance v6, Lcom/youku/gamecenter/download/DownloadInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x4

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v2, 0x5

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x9

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0xa

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0xb

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v2, 0xc

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v2, 0xd

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v2, 0xe

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0xf

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v2, 0x10

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v2, 0x11

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v2, 0x12

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v2, 0x14

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v2, 0x15

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-direct/range {v6 .. v31}, Lcom/youku/gamecenter/download/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;J)V

    .line 485
    .local v6, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    invoke-static {v6}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 486
    iget-object v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/youku/gamecenter/download/SQLManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    :goto_1
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSilentDownload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 468
    .end local v6    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :catch_0
    move-exception v33

    .line 469
    .local v33, "e":Ljava/lang/Exception;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    if-eqz v32, :cond_1

    .line 471
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 503
    .end local v33    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v34

    .line 488
    .restart local v6    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_2
    iget v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 489
    const/4 v2, 0x4

    iput v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 492
    :cond_3
    iget v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_4

    .line 493
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 494
    :cond_4
    if-eqz p2, :cond_0

    .line 495
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 502
    .end local v6    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_5
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public insertToDB(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 18
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 65
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v11, "contentValues":Landroid/content/ContentValues;
    const-string v2, "package_name"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "url"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "icon"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v2, "title"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "progress"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v2, "last_modified"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "version"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string/jumbo v2, "source"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "path"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "gameid"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v2, "statistics"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v2, "type"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v2, "md5"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mMd5:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "version_name"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "download_way"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v2, "click_state"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v2, "notification_id"

    move-object/from16 v0, p1

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string/jumbo v2, "start_track"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mStartTrack:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "end_track"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "current_length"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const/4 v14, 0x0

    .line 88
    .local v14, "inserted":Z
    :try_start_0
    const-string/jumbo v5, "url=?"

    .line 89
    .local v5, "str":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 90
    .local v6, "arrayOfString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "progress"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 93
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 94
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists in the db. Insert is cancelled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v14, 0x0

    .line 104
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "arrayOfString":[Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v14

    .line 98
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v6    # "arrayOfString":[Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 100
    .local v16, "row":J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-eqz v2, :cond_1

    const/4 v14, 0x1

    .line 101
    :goto_2
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "rowid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "arrayOfString":[Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v16    # "row":J
    :catch_0
    move-exception v13

    .line 106
    .local v13, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 100
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v6    # "arrayOfString":[Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "row":J
    :cond_1
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public isSilentDownloadExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=2 and url=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "str":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "gamecenter_download_list"

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v5, "url"

    aput-object v5, v2, v11

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 512
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    .line 514
    .local v9, "result":Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 515
    sget-object v0, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSilentDownloadExist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-nez v9, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    move v0, v11

    goto :goto_0
.end method

.method public updateCurrentLength(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "currentLength"    # J

    .prologue
    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "current_length"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string/jumbo v1, "url=?"

    .line 140
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCurrentLength("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public updateDownloadWay(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadway"    # I

    .prologue
    .line 194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "download_way"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v2, "last_modified"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "url=?"

    .line 198
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDownloadWay("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public updateDuration(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "duration"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string/jumbo v1, "url=?"

    .line 167
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDuration("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public updateEnd(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 173
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v2, "progress"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v2, "last_modified"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "url=?"

    .line 178
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public updatePauseState(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "clickState"    # I

    .prologue
    .line 204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "click_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v2, "last_modified"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "url=?"

    .line 208
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePause("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public updateProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 115
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v3, "progress"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v3, "last_modified"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "url=?"

    .line 119
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    .line 120
    .local v0, "arrayOfString":[Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v3}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "gamecenter_download_list"

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    sget-object v3, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string/jumbo v1, "url=?"

    .line 131
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public updateType(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v2, "last_modified"

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "url=?"

    .line 188
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/download/SQLManager;->mSQLiteHelper:Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;

    invoke-virtual {v2}, Lcom/youku/gamecenter/download/SQLManager$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "gamecenter_download_list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    sget-object v2, Lcom/youku/gamecenter/download/SQLManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method
