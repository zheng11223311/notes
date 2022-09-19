.class public Lcom/sea_monster/dao/query/GroupQuery;
.super Lcom/sea_monster/dao/query/AbstractQuery;
.source "GroupQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/GroupQuery$1;,
        Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume;,
        Lcom/sea_monster/dao/query/GroupQuery$QueryData;
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
.field private final queryData:Lcom/sea_monster/dao/query/GroupQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/query/GroupQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sea_monster/dao/query/GroupQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/GroupQuery$QueryData",
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
    .line 37
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery;, "Lcom/sea_monster/dao/query/GroupQuery<TT;>;"
    .local p1, "queryData":Lcom/sea_monster/dao/query/GroupQuery$QueryData;, "Lcom/sea_monster/dao/query/GroupQuery$QueryData<TT;>;"
    .local p2, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    new-instance v0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;

    invoke-direct {v0, p2}, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;-><init>(Lcom/sea_monster/dao/AbstractDao;)V

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/sea_monster/dao/query/AbstractQuery;-><init>(Lcom/sea_monster/dao/AbstractDao;Lcom/sea_monster/dao/IQueryDaoAccess;Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/sea_monster/dao/query/GroupQuery;->queryData:Lcom/sea_monster/dao/query/GroupQuery$QueryData;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/dao/query/GroupQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/GroupQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/dao/query/GroupQuery$QueryData;
    .param p2, "x1"    # Lcom/sea_monster/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lcom/sea_monster/dao/query/GroupQuery$1;

    .prologue
    .line 14
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery;, "Lcom/sea_monster/dao/query/GroupQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sea_monster/dao/query/GroupQuery;-><init>(Lcom/sea_monster/dao/query/GroupQuery$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/GroupQuery;
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
            "Lcom/sea_monster/dao/query/GroupQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/GroupQuery$QueryData;

    invoke-static {p2}, Lcom/sea_monster/dao/query/GroupQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sea_monster/dao/query/GroupQuery$QueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lcom/sea_monster/dao/query/GroupQuery$1;)V

    .line 31
    .local v0, "queryData":Lcom/sea_monster/dao/query/GroupQuery$QueryData;, "Lcom/sea_monster/dao/query/GroupQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lcom/sea_monster/dao/query/GroupQuery$QueryData;->forCurrentThread()Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/query/GroupQuery;

    return-object v1
.end method


# virtual methods
.method public forCurrentThread()Lcom/sea_monster/dao/query/GroupQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/GroupQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery;, "Lcom/sea_monster/dao/query/GroupQuery<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/GroupQuery;->queryData:Lcom/sea_monster/dao/query/GroupQuery$QueryData;

    invoke-virtual {v0, p0}, Lcom/sea_monster/dao/query/GroupQuery$QueryData;->forCurrentThread(Lcom/sea_monster/dao/query/AbstractQuery;)Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/GroupQuery;

    return-object v0
.end method

.method public list(Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume",
            "<TK;>;)",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery;, "Lcom/sea_monster/dao/query/GroupQuery<TT;>;"
    .local p1, "consume":Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume;, "Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume<TK;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/GroupQuery;->checkThread()V

    .line 51
    iget-object v2, p0, Lcom/sea_monster/dao/query/GroupQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v2}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/sea_monster/dao/query/GroupQuery;->sql:Ljava/lang/String;

    iget-object v4, p0, Lcom/sea_monster/dao/query/GroupQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    invoke-interface {p1, v0}, Lcom/sea_monster/dao/query/GroupQuery$QueryResultConsume;->getQueryResult(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    :cond_1
    return-object v1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14
    .local p0, "this":Lcom/sea_monster/dao/query/GroupQuery;, "Lcom/sea_monster/dao/query/GroupQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/sea_monster/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    return-void
.end method
