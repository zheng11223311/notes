.class public Lcom/youku/pushsdk/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/pushsdk/db/DBHelper$TableDefine;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "pushsdk.db"

.field private static final DEFAULT_EXPIRE_TIME:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;

.field private static final db_path:Ljava/lang/String;

.field private static instance:Lcom/youku/pushsdk/db/DBHelper;

.field private static final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-class v0, Lcom/youku/pushsdk/db/DBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/db/DBHelper;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/youku/pushservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/db/DBHelper;->path:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/youku/pushsdk/db/DBHelper;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pushsdk.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static checkDir()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/youku/pushsdk/db/DBHelper;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/youku/pushsdk/db/DBHelper;
    .locals 5

    .prologue
    .line 25
    sget-object v2, Lcom/youku/pushsdk/db/DBHelper;->instance:Lcom/youku/pushsdk/db/DBHelper;

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Lcom/youku/pushsdk/db/DBHelper;

    invoke-direct {v2}, Lcom/youku/pushsdk/db/DBHelper;-><init>()V

    sput-object v2, Lcom/youku/pushsdk/db/DBHelper;->instance:Lcom/youku/pushsdk/db/DBHelper;

    .line 29
    :cond_0
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {}, Lcom/youku/pushsdk/db/DBHelper;->checkDir()V

    .line 31
    sget-object v2, Lcom/youku/pushsdk/db/DBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "db path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "f":Ljava/io/File;
    sget-object v2, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "create table if not exists push_record(_id integer primary key autoincrement,topic varchar(20),msgid varchar(20),time timestamp)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 40
    :cond_1
    sget-object v2, Lcom/youku/pushsdk/db/DBHelper;->instance:Lcom/youku/pushsdk/db/DBHelper;

    return-object v2
.end method


# virtual methods
.method public deleteExpireData()V
    .locals 2

    .prologue
    .line 121
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Lcom/youku/pushsdk/db/DBHelper;->deleteExpireData(J)V

    .line 122
    return-void
.end method

.method public deleteExpireData(J)V
    .locals 7
    .param p1, "expireInterval"    # J

    .prologue
    .line 104
    const-string v4, "mounted"

    .line 105
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 105
    if-eqz v4, :cond_0

    .line 106
    sget-object v4, Lcom/youku/pushsdk/db/DBHelper;->TAG:Ljava/lang/String;

    const-string v5, "delete expire data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v4, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    .line 108
    const/4 v5, 0x0

    .line 107
    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, p1

    .line 110
    .local v2, "time":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from push_record where time<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 115
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "time":J
    :cond_0
    return-void
.end method

.method public insert(Ljava/lang/String;I)V
    .locals 7
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "messageId"    # I

    .prologue
    const/4 v6, 0x0

    .line 55
    const-string v2, "mounted"

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 60
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "topic"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "msgid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v2, "push_record"

    invoke-virtual {v1, v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method public queryMessageId(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "duplicateMsgId"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    .local v9, "result":Z
    const-string v1, "mounted"

    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    sget-object v1, Lcom/youku/pushsdk/db/DBHelper;->db_path:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "topic=? and msgid=?"

    .line 85
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 86
    .local v4, "args":[Ljava/lang/String;
    const-string v1, "push_record"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 88
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    const/4 v9, 0x1

    .line 91
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    return v9
.end method
