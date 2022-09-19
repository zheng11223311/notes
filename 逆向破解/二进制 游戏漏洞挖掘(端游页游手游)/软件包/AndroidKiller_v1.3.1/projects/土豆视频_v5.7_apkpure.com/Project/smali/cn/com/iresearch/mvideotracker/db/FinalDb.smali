.class public Lcn/com/iresearch/mvideotracker/db/FinalDb;
.super Ljava/lang/Object;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;,
        Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;,
        Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinalDb"

.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mvideotracker/db/FinalDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->daoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)V
    .locals 6
    .param p1, "config"    # Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getDbVersion()I

    move-result v4

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getDbUpdateListener()Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;-><init>(Lcn/com/iresearch/mvideotracker/db/FinalDb;Landroid/content/Context;Ljava/lang/String;ILcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;)V

    .line 41
    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$SqliteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->config:Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    .line 43
    return-void
.end method

.method private checkTableExist(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->tableIsExist(Lcn/com/iresearch/mvideotracker/db/table/TableInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;-><init>()V

    .line 56
    .local v0, "config":Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 58
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;-><init>()V

    .line 72
    .local v0, "config":Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Z)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 79
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;-><init>()V

    .line 80
    .local v0, "config":Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p2}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDebug(Z)V

    .line 84
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZILcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "dbVersion"    # I
    .param p4, "dbUpdateListener"    # Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;

    .prologue
    .line 89
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;-><init>()V

    .line 90
    .local v0, "config":Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDebug(Z)V

    .line 93
    invoke-virtual {v0, p3}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 94
    invoke-virtual {v0, p4}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDbUpdateListener(Lcn/com/iresearch/mvideotracker/db/FinalDb$DbUpdateListener;)V

    .line 95
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Z)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 63
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    invoke-direct {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;-><init>()V

    .line 64
    .local v0, "config":Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->setDebug(Z)V

    .line 66
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 1
    .param p0, "daoConfig"    # Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    .prologue
    .line 99
    invoke-static {p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method private debugSql(Ljava/lang/String;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->config:Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->config:Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "Debug SQL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    return-void
.end method

.method private exeSqlInfo(Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;)V
    .locals 3
    .param p1, "sqlInfo"    # Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "FinalDb"

    const-string/jumbo v1, "sava error:sqlInfo is null"

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p2, "strSQL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 369
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 370
    invoke-direct {p0, p2}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 371
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 373
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 382
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 386
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    return-object v2

    .line 375
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    :try_start_1
    invoke-static {v0, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 376
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    if-eqz v0, :cond_2

    .line 383
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_2
    const/4 v0, 0x0

    move-object v2, v4

    .line 386
    goto :goto_1

    .line 381
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 382
    if-eqz v0, :cond_3

    .line 383
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_3
    const/4 v0, 0x0

    .line 385
    throw v4
.end method

.method private static declared-synchronized getInstance(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 4
    .param p0, "daoConfig"    # Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;

    .prologue
    .line 46
    const-class v2, Lcn/com/iresearch/mvideotracker/db/FinalDb;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcn/com/iresearch/mvideotracker/db/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 47
    .local v0, "dao":Lcn/com/iresearch/mvideotracker/db/FinalDb;
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .end local v0    # "dao":Lcn/com/iresearch/mvideotracker/db/FinalDb;
    invoke-direct {v0, p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;-><init>(Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;)V

    .line 49
    .restart local v0    # "dao":Lcn/com/iresearch/mvideotracker/db/FinalDb;
    sget-object v1, Lcn/com/iresearch/mvideotracker/db/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/db/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v2

    return-object v0

    .line 46
    .end local v0    # "dao":Lcn/com/iresearch/mvideotracker/db/FinalDb;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 4
    .param p2, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mvideotracker/db/table/KeyValue;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/KeyValue;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    :goto_1
    return-void

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;

    .line 132
    .local v0, "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "kv":Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
    :cond_1
    const-string v1, "FinalDb"

    .line 136
    const-string v2, "insertContentValues: List<KeyValue> is empty or ContentValues is empty!"

    .line 135
    invoke-static {v1, v2}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private tableIsExist(Lcn/com/iresearch/mvideotracker/db/table/TableInfo;)Z
    .locals 8
    .param p1, "table"    # Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 435
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->isCheckDatabese()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 460
    :goto_0
    return v4

    .line 438
    :cond_0
    const/4 v1, 0x0

    .line 440
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 440
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "sql":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 443
    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 445
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 446
    .local v0, "count":I
    if-lez v0, :cond_4

    .line 447
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->setCheckDatabese(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-eqz v1, :cond_1

    .line 456
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_1
    const/4 v1, 0x0

    .line 448
    goto :goto_0

    .line 452
    .end local v0    # "count":I
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    if-eqz v1, :cond_2

    .line 456
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_2
    const/4 v1, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    move v4, v5

    .line 460
    goto :goto_0

    .line 454
    :catchall_0
    move-exception v4

    .line 455
    if-eqz v1, :cond_3

    .line 456
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_3
    const/4 v1, 0x0

    .line 458
    throw v4

    .line 455
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 456
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 153
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->exeSqlInfo(Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;)V

    .line 154
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 158
    invoke-static {p1, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->exeSqlInfo(Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;)V

    .line 159
    return-void
.end method

.method public deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 169
    invoke-static {p1, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 345
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v1, " ORDER BY  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 357
    invoke-static {p1, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p2, "strWhere"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ORDER BY  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 185
    invoke-static {p2, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    move-result-object v2

    .line 186
    .local v2, "sqlInfo":Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;->getBindArgsAsStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-static {v0, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v3

    .line 194
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 196
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    throw v3

    .line 197
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public findDbModelBySQL(Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;
    .locals 4
    .param p1, "strSQL"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 393
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 401
    :goto_0
    return-object v2

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 400
    throw v2

    .line 399
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public findDbModelListBySQL(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "strSQL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 407
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v1, "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 417
    :goto_1
    return-object v1

    .line 410
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 414
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 416
    throw v3
.end method

.method public findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 205
    invoke-static {p2, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "sql":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v7}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;

    move-result-object v0

    .line 208
    .local v0, "dbModel":Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;
    if-eqz v0, :cond_3

    .line 209
    invoke-static {v0, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->dbModel2Entity(Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 212
    :try_start_0
    invoke-static {p2}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v8

    iget-object v8, v8, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 213
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 214
    .local v5, "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 233
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v5    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_1
    :goto_1
    return-object v2

    .line 214
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v5    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 215
    .local v3, "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 216
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 219
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 220
    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getDataType()Ljava/lang/Class;

    move-result-object v10

    .line 218
    invoke-virtual {p0, v9, v10}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 221
    .local v4, "manyEntity":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {v3, v2, v4}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v3    # "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    .end local v4    # "manyEntity":Ljava/lang/Object;, "TT;"
    .end local v5    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    .end local v6    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public varargs findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "findClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 239
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "sql":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, v9}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;

    move-result-object v1

    .line 242
    .local v1, "dbModel":Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;
    if-eqz v1, :cond_5

    .line 243
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->dbModel2Entity(Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 244
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 246
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v10

    iget-object v10, v10, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 247
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    .line 248
    .local v8, "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 273
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    .end local v8    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_1
    :goto_1
    return-object v3

    .line 248
    .restart local v3    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v8    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;

    .line 249
    .local v6, "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    const/4 v4, 0x0

    .line 250
    .local v4, "isFind":Z
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v12, :cond_3

    .line 257
    :goto_3
    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v6}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 261
    invoke-virtual {v6}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getDataType()Ljava/lang/Class;

    move-result-object v12

    .line 259
    invoke-virtual {p0, v10, v12}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 262
    .local v7, "manyEntity":Ljava/lang/Object;, "TT;"
    if-eqz v7, :cond_0

    .line 263
    invoke-virtual {v6, v3, v7}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v4    # "isFind":Z
    .end local v6    # "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    .end local v7    # "manyEntity":Ljava/lang/Object;, "TT;"
    .end local v8    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "isFind":Z
    .restart local v6    # "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    .restart local v8    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_3
    :try_start_1
    aget-object v5, p3, v10

    .line 251
    .local v5, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    if-ne v13, v5, :cond_4

    .line 252
    const/4 v4, 0x1

    .line 253
    goto :goto_3

    .line 250
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 273
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    .end local v4    # "isFind":Z
    .end local v5    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "many":Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;
    .end local v8    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/ManyToOne;>;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 278
    invoke-static {p2, p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "sql":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, v6}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;

    move-result-object v0

    .line 281
    .local v0, "dbModel":Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;
    if-eqz v0, :cond_3

    .line 282
    invoke-static {v0, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->dbModel2Entity(Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 283
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 285
    :try_start_0
    invoke-static {p2}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v7

    iget-object v7, v7, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 286
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 287
    .local v5, "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 301
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v5    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_1
    :goto_1
    return-object v2

    .line 287
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v5    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;

    .line 288
    .local v4, "one":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v8

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 288
    invoke-virtual {p0, v8, v9}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 290
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {v4, v2, v3}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "one":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    .end local v5    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 301
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public varargs findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 16
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "findClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 307
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "sql":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;

    move-result-object v2

    .line 310
    .local v2, "dbModel":Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;
    if-eqz v2, :cond_5

    .line 311
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcn/com/iresearch/mvideotracker/db/sqlite/CursorUtils;->dbModel2Entity(Lcn/com/iresearch/mvideotracker/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 312
    .local v4, "entity":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_1

    .line 314
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v11

    iget-object v11, v11, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 315
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    .line 316
    .local v9, "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 340
    .end local v4    # "entity":Ljava/lang/Object;, "TT;"
    .end local v9    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_1
    :goto_1
    return-object v4

    .line 316
    .restart local v4    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v9    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;

    .line 317
    .local v8, "one":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    const/4 v5, 0x0

    .line 318
    .local v5, "isFind":Z
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v13, :cond_3

    .line 325
    :goto_3
    if-eqz v5, :cond_0

    .line 326
    invoke-virtual {v8}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v11

    .line 327
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 328
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v6, :cond_0

    .line 329
    invoke-virtual {v8, v4, v6}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v5    # "isFind":Z
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v8    # "one":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    .end local v9    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 318
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "isFind":Z
    .restart local v8    # "one":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    .restart local v9    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_3
    :try_start_1
    aget-object v7, p3, v11

    .line 319
    .local v7, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Lcn/com/iresearch/mvideotracker/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_4

    .line 320
    const/4 v5, 0x1

    .line 321
    goto :goto_3

    .line 318
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 340
    .end local v4    # "entity":Ljava/lang/Object;, "TT;"
    .end local v5    # "isFind":Z
    .end local v7    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "one":Lcn/com/iresearch/mvideotracker/db/table/OneToMany;
    .end local v9    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lcn/com/iresearch/mvideotracker/db/table/OneToMany;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 109
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->buildInsertSql(Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->exeSqlInfo(Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;)V

    .line 110
    return-void
.end method

.method public saveBindId(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 115
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "entityKvList":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/db/table/KeyValue;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->get(Ljava/lang/Class;)Lcn/com/iresearch/mvideotracker/db/table/TableInfo;

    move-result-object v3

    .line 118
    .local v3, "tf":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v1, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V

    .line 120
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/db/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 121
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 126
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "tf":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    :cond_0
    :goto_0
    return v4

    .line 123
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "id":Ljava/lang/Long;
    .restart local v3    # "tf":Lcn/com/iresearch/mvideotracker/db/table/TableInfo;
    :cond_1
    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/db/table/TableInfo;->getId()Lcn/com/iresearch/mvideotracker/db/table/Id;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcn/com/iresearch/mvideotracker/db/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 143
    invoke-static {p1}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->exeSqlInfo(Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;)V

    .line 144
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "strWhere"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 148
    invoke-static {p1, p2}, Lcn/com/iresearch/mvideotracker/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->exeSqlInfo(Lcn/com/iresearch/mvideotracker/db/sqlite/SqlInfo;)V

    .line 149
    return-void
.end method
