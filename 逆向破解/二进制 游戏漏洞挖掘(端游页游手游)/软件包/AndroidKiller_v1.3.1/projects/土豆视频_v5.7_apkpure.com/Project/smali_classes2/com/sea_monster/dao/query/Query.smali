.class public Lcom/sea_monster/dao/query/Query;
.super Lcom/sea_monster/dao/query/AbstractQuery;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/Query$1;,
        Lcom/sea_monster/dao/query/Query$QueryData;
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
.field private final limitPosition:I

.field private final offsetPosition:I

.field private final queryData:Lcom/sea_monster/dao/query/Query$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/query/Query$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sea_monster/dao/query/Query$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 1
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .param p5, "limitPosition"    # I
    .param p6, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/Query$QueryData",
            "<TT;>;",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    .local p1, "queryData":Lcom/sea_monster/dao/query/Query$QueryData;, "Lcom/sea_monster/dao/query/Query$QueryData<TT;>;"
    .local p2, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    new-instance v0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;

    invoke-direct {v0, p2}, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;-><init>(Lcom/sea_monster/dao/AbstractDao;)V

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/sea_monster/dao/query/AbstractQuery;-><init>(Lcom/sea_monster/dao/AbstractDao;Lcom/sea_monster/dao/IQueryDaoAccess;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/sea_monster/dao/query/Query;->queryData:Lcom/sea_monster/dao/query/Query$QueryData;

    .line 76
    iput p5, p0, Lcom/sea_monster/dao/query/Query;->limitPosition:I

    .line 77
    iput p6, p0, Lcom/sea_monster/dao/query/Query;->offsetPosition:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/dao/query/Query$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILcom/sea_monster/dao/query/Query$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/dao/query/Query$QueryData;
    .param p2, "x1"    # Lcom/sea_monster/dao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/sea_monster/dao/query/Query$1;

    .prologue
    .line 38
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-direct/range {p0 .. p6}, Lcom/sea_monster/dao/query/Query;-><init>(Lcom/sea_monster/dao/query/Query$QueryData;Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/sea_monster/dao/query/Query;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .param p3, "limitPosition"    # I
    .param p4, "offsetPosition"    # I
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
            "II)",
            "Lcom/sea_monster/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/Query$QueryData;

    invoke-static {p2}, Lcom/sea_monster/dao/query/Query;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/dao/query/Query$QueryData;-><init>(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 65
    .local v0, "queryData":Lcom/sea_monster/dao/query/Query$QueryData;, "Lcom/sea_monster/dao/query/Query$QueryData<TT2;>;"
    invoke-virtual {v0}, Lcom/sea_monster/dao/query/Query$QueryData;->forCurrentThread()Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/query/Query;

    return-object v1
.end method

.method public static internalCreate(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/Query;
    .locals 1
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
            "Lcom/sea_monster/dao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    const/4 v0, -0x1

    .line 58
    invoke-static {p0, p1, p2, v0, v0}, Lcom/sea_monster/dao/query/Query;->create(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forCurrentThread()Lcom/sea_monster/dao/query/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/Query;->queryData:Lcom/sea_monster/dao/query/Query$QueryData;

    invoke-virtual {v0, p0}, Lcom/sea_monster/dao/query/Query$QueryData;->forCurrentThread(Lcom/sea_monster/dao/query/AbstractQuery;)Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/Query;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 137
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/Query;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->checkThread()V

    .line 121
    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    invoke-interface {v1, v0}, Lcom/sea_monster/dao/IQueryDaoAccess;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listIterator()Lcom/sea_monster/dao/query/CloseableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/CloseableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->listLazyUncached()Lcom/sea_monster/dao/query/LazyList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sea_monster/dao/query/LazyList;->listIteratorAutoClose()Lcom/sea_monster/dao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lcom/sea_monster/dao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->checkThread()V

    .line 132
    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 133
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/sea_monster/dao/query/LazyList;

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/sea_monster/dao/query/LazyList;-><init>(Lcom/sea_monster/dao/IQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listLazyUncached()Lcom/sea_monster/dao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->checkThread()V

    .line 147
    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/sea_monster/dao/query/LazyList;

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/sea_monster/dao/query/LazyList;-><init>(Lcom/sea_monster/dao/IQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public setLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->checkThread()V

    .line 100
    iget v0, p0, Lcom/sea_monster/dao/query/Query;->limitPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    iget v1, p0, Lcom/sea_monster/dao/query/Query;->limitPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    return-void
.end method

.method public setOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 111
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->checkThread()V

    .line 112
    iget v0, p0, Lcom/sea_monster/dao/query/Query;->offsetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    iget v1, p0, Lcom/sea_monster/dao/query/Query;->offsetPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    return-void
.end method

.method public setParameter(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 88
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sea_monster/dao/query/Query;->limitPosition:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sea_monster/dao/query/Query;->offsetPosition:I

    if-ne p1, v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal parameter index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sea_monster/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method public unique()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->checkThread()V

    .line 168
    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/Query;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sea_monster/dao/query/Query;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    invoke-interface {v1, v0}, Lcom/sea_monster/dao/IQueryDaoAccess;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/sea_monster/dao/query/Query;, "Lcom/sea_monster/dao/query/Query<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 182
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "No entity found for query"

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    return-object v0
.end method
