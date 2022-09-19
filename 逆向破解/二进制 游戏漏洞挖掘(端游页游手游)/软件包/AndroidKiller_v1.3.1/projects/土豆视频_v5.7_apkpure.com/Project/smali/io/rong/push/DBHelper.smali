.class public Lio/rong/push/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "rong_version.db"

.field private static final TABLE_NAME:Ljava/lang/String; = "VERSION"

.field private static final VERSION:I = 0x1

.field private static sS:Lio/rong/push/DBHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string/jumbo v0, "rong_version.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lio/rong/push/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    iput-object p1, p0, Lio/rong/push/DBHelper;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/rong/push/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/rong/push/DBHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Lio/rong/push/DBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/rong/push/DBHelper;->sS:Lio/rong/push/DBHelper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lio/rong/push/DBHelper;

    invoke-direct {v0, p0}, Lio/rong/push/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/rong/push/DBHelper;->sS:Lio/rong/push/DBHelper;

    .line 35
    :cond_0
    sget-object v0, Lio/rong/push/DBHelper;->sS:Lio/rong/push/DBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/push/DBHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lio/rong/push/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Lio/rong/imlib/model/AppVersion;)V
    .locals 6
    .param p1, "version"    # Lio/rong/imlib/model/AppVersion;

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 231
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 236
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    const-string v1, "VERSION"

    const-string v2, "APP_ID=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/rong/push/DBHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 243
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/rong/push/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lio/rong/push/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v1, p0, Lio/rong/push/DBHelper;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lio/rong/push/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 247
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 85
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v1, "VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 90
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V

    goto :goto_0
.end method

.method public declared-synchronized insertOrReplace(Lio/rong/imlib/model/AppVersion;)V
    .locals 7
    .param p1, "version"    # Lio/rong/imlib/model/AppVersion;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 106
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    const-string v4, "APP_ID"

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 112
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, "VERSION"

    const-string v5, "APP_ID=?"

    invoke-virtual {v0, v4, v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "num":I
    const-string v4, "DBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertOrReplace====== num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez v1, :cond_1

    .line 116
    const-string v4, "APP_KEY"

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "APP_VERSION_CODE"

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getAppVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v4, "SDKVERSION_CODE"

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getSDKVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v4, "PUSH_VERSION_CODE"

    invoke-virtual {p1}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v4, "VERSION"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 123
    :cond_1
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "num":I
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/push/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    const-string v0, "DBHelper"

    const-string v1, "onCreate======"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "CREATE TABLE \'VERSION\' (\'APP_ID\' TEXT PRIMARY KEY NOT NULL UNIQUE ,\'APP_KEY\' TEXT NOT NULL ,\'APP_VERSION_CODE\' INTEGER NOT NULL ,\'SDKVERSION_CODE\' INTEGER NOT NULL ,\'PUSH_VERSION_CODE\' INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE INDEX IDX_VERSION_APP_ID ON VERSION (APP_ID);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "CREATE INDEX IDX_VERSION_APP_KEY ON VERSION (APP_KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "update Database"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const-string v0, "DBHelper"

    const-string v1, "onUpgrade======"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public declared-synchronized order([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/AppVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 132
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v12, "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 134
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .local v8, "builder":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    move-object v12, v1

    .line 165
    .end local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :goto_0
    monitor-exit p0

    return-object v12

    .line 140
    .restart local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_1
    array-length v1, p1

    if-ge v10, v1, :cond_2

    .line 141
    aget-object v1, p1, v10

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-eq v10, v1, :cond_1

    .line 143
    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 147
    :cond_2
    const-string v1, "DBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "order command is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v1, "VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 151
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    :cond_3
    new-instance v11, Lio/rong/imlib/model/AppVersion;

    invoke-direct {v11}, Lio/rong/imlib/model/AppVersion;-><init>()V

    .line 154
    .local v11, "version":Lio/rong/imlib/model/AppVersion;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppId(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppKey(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppVersionCode(I)V

    .line 157
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setSDKVersionCode(I)V

    .line 158
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setPushVersionCode(I)V

    .line 159
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    .end local v11    # "version":Lio/rong/imlib/model/AppVersion;
    :cond_4
    const-string v1, "DBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "versionList size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 164
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized query(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/AppVersion;
    .locals 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "SelectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 202
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 204
    .local v11, "version":Lio/rong/imlib/model/AppVersion;
    if-nez v0, :cond_0

    .line 224
    :goto_0
    monitor-exit p0

    return-object v1

    .line 207
    :cond_0
    :try_start_1
    const-string v1, "DBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 210
    .local v4, "args":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v9, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "VERSION"

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 214
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    new-instance v11, Lio/rong/imlib/model/AppVersion;

    .end local v11    # "version":Lio/rong/imlib/model/AppVersion;
    invoke-direct {v11}, Lio/rong/imlib/model/AppVersion;-><init>()V

    .line 216
    .restart local v11    # "version":Lio/rong/imlib/model/AppVersion;
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppId(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppKey(Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppVersionCode(I)V

    .line 219
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setSDKVersionCode(I)V

    .line 220
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setPushVersionCode(I)V

    .line 222
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v11

    .line 224
    goto :goto_0

    .line 201
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "version":Lio/rong/imlib/model/AppVersion;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryAll()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/AppVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v12, "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v12, v1

    .line 196
    .end local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :goto_0
    monitor-exit p0

    return-object v12

    .line 176
    .restart local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :cond_0
    :try_start_1
    const-string v1, "VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 179
    .local v9, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    :cond_1
    new-instance v11, Lio/rong/imlib/model/AppVersion;

    invoke-direct {v11}, Lio/rong/imlib/model/AppVersion;-><init>()V

    .line 182
    .local v11, "version":Lio/rong/imlib/model/AppVersion;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppId(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppKey(Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setAppVersionCode(I)V

    .line 185
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setSDKVersionCode(I)V

    .line 186
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lio/rong/imlib/model/AppVersion;->setPushVersionCode(I)V

    .line 187
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 193
    .end local v11    # "version":Lio/rong/imlib/model/AppVersion;
    :cond_2
    :goto_1
    :try_start_3
    const-string v1, "DBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all versionList size is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 190
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :catch_0
    move-exception v10

    .line 191
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    const-string v1, "VERSION"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lio/rong/push/DBHelper;->closeDatabase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
