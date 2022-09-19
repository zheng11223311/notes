.class public Lcom/sea_monster/dao/query/DeleteQuery;
.super Lcom/sea_monster/dao/query/AbstractQuery;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/DeleteQuery$1;,
        Lcom/sea_monster/dao/query/DeleteQuery$QueryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sea_monster/dao/query/AbstractQuery",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queryData:Lcom/sea_monster/dao/query/DeleteQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/query/DeleteQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sea_monster/dao/query/DeleteQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/DeleteQuery$QueryData",
            "<TT;>;",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/sea_monster/dao/query/DeleteQuery;, "Lcom/sea_monster/dao/query/DeleteQuery<TT;>;"
    .local p1, "queryData":Lcom/sea_monster/dao/query/DeleteQuery$QueryData;, "Lcom/sea_monster/dao/query/DeleteQuery$QueryData<TT;>;"
    .local p2, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    new-instance v0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;

    invoke-direct {v0, p2}, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;-><init>(Lcom/sea_monster/dao/AbstractDao;)V

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/sea_monster/dao/query/AbstractQuery;-><init>(Lcom/sea_monster/dao/AbstractDao;Lcom/sea_monster/dao/IQueryDaoAccess;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/sea_monster/dao/query/DeleteQuery;->queryData:Lcom/sea_monster/dao/query/DeleteQuery$QueryData;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/dao/query/DeleteQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/DeleteQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/dao/query/DeleteQuery$QueryData;
    .param p2, "x1"    # Lcom/sea_monster/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lcom/sea_monster/dao/query/DeleteQuery$1;

    .prologue
    .line 32
    .local p0, "this":Lcom/sea_monster/dao/query/DeleteQuery;, "Lcom/sea_monster/dao/query/DeleteQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sea_monster/dao/query/DeleteQuery;-><init>(Lcom/sea_monster/dao/query/DeleteQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/DeleteQuery;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sea_monster/dao/query/DeleteQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/DeleteQuery$QueryData;

    invoke-static {p2}, Lcom/sea_monster/dao/query/DeleteQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sea_monster/dao/query/DeleteQuery$QueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/DeleteQuery$1;)V

    .line 47
    .local v0, "queryData":Lcom/sea_monster/dao/query/DeleteQuery$QueryData;, "Lcom/sea_monster/dao/query/DeleteQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeleteQuery$QueryData;->forCurrentThread()Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/query/DeleteQuery;

    return-object v1
.end method


# virtual methods
.method public executeDeleteWithoutDetachingEntities()V
    .locals 4

    .prologue
    .line 67
    .local p0, "this":Lcom/sea_monster/dao/query/DeleteQuery;, "Lcom/sea_monster/dao/query/DeleteQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeleteQuery;->checkThread()V

    .line 68
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeleteQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeleteQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeleteQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeleteQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeleteQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public forCurrentThread()Lcom/sea_monster/dao/query/DeleteQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/sea_monster/dao/query/DeleteQuery;, "Lcom/sea_monster/dao/query/DeleteQuery<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeleteQuery;->queryData:Lcom/sea_monster/dao/query/DeleteQuery$QueryData;

    invoke-virtual {v0, p0}, Lcom/sea_monster/dao/query/DeleteQuery$QueryData;->forCurrentThread(Lcom/sea_monster/dao/query/AbstractQuery;)Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/DeleteQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lcom/sea_monster/dao/query/DeleteQuery;, "Lcom/sea_monster/dao/query/DeleteQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/sea_monster/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    return-void
.end method
