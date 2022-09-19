.class public Lcom/sea_monster/dao/query/CountQuery;
.super Lcom/sea_monster/dao/query/AbstractQuery;
.source "CountQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/CountQuery$1;,
        Lcom/sea_monster/dao/query/CountQuery$QueryData;
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
.field private final queryData:Lcom/sea_monster/dao/query/CountQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/query/CountQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sea_monster/dao/query/CountQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/CountQuery$QueryData",
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
    .line 31
    .local p0, "this":Lcom/sea_monster/dao/query/CountQuery;, "Lcom/sea_monster/dao/query/CountQuery<TT;>;"
    .local p1, "queryData":Lcom/sea_monster/dao/query/CountQuery$QueryData;, "Lcom/sea_monster/dao/query/CountQuery$QueryData<TT;>;"
    .local p2, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    new-instance v0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;

    invoke-direct {v0, p2}, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;-><init>(Lcom/sea_monster/dao/AbstractDao;)V

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/sea_monster/dao/query/AbstractQuery;-><init>(Lcom/sea_monster/dao/AbstractDao;Lcom/sea_monster/dao/IQueryDaoAccess;Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/sea_monster/dao/query/CountQuery;->queryData:Lcom/sea_monster/dao/query/CountQuery$QueryData;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/dao/query/CountQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/CountQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/dao/query/CountQuery$QueryData;
    .param p2, "x1"    # Lcom/sea_monster/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lcom/sea_monster/dao/query/CountQuery$1;

    .prologue
    .line 9
    .local p0, "this":Lcom/sea_monster/dao/query/CountQuery;, "Lcom/sea_monster/dao/query/CountQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sea_monster/dao/query/CountQuery;-><init>(Lcom/sea_monster/dao/query/CountQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/CountQuery;
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
            "Lcom/sea_monster/dao/query/CountQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/CountQuery$QueryData;

    invoke-static {p2}, Lcom/sea_monster/dao/query/CountQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sea_monster/dao/query/CountQuery$QueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/CountQuery$1;)V

    .line 25
    .local v0, "queryData":Lcom/sea_monster/dao/query/CountQuery$QueryData;, "Lcom/sea_monster/dao/query/CountQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lcom/sea_monster/dao/query/CountQuery$QueryData;->forCurrentThread()Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/query/CountQuery;

    return-object v1
.end method


# virtual methods
.method public count()J
    .locals 4

    .prologue
    .line 41
    .local p0, "this":Lcom/sea_monster/dao/query/CountQuery;, "Lcom/sea_monster/dao/query/CountQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/CountQuery;->checkThread()V

    .line 42
    iget-object v1, p0, Lcom/sea_monster/dao/query/CountQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/CountQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/CountQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 44
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "No result for count"

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 46
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected row count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 49
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected column count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v2
.end method

.method public forCurrentThread()Lcom/sea_monster/dao/query/CountQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/sea_monster/dao/query/CountQuery;, "Lcom/sea_monster/dao/query/CountQuery<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/CountQuery;->queryData:Lcom/sea_monster/dao/query/CountQuery$QueryData;

    invoke-virtual {v0, p0}, Lcom/sea_monster/dao/query/CountQuery$QueryData;->forCurrentThread(Lcom/sea_monster/dao/query/AbstractQuery;)Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/CountQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9
    .local p0, "this":Lcom/sea_monster/dao/query/CountQuery;, "Lcom/sea_monster/dao/query/CountQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/sea_monster/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    return-void
.end method
