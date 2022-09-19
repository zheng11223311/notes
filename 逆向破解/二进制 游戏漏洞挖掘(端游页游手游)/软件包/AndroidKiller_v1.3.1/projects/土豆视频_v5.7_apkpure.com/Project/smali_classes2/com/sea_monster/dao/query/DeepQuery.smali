.class public Lcom/sea_monster/dao/query/DeepQuery;
.super Lcom/sea_monster/dao/query/AbstractQuery;
.source "DeepQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/dao/query/DeepQuery$1;,
        Lcom/sea_monster/dao/query/DeepQuery$QueryData;
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

.field private final queryData:Lcom/sea_monster/dao/query/DeepQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/query/DeepQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sea_monster/dao/query/DeepQuery$QueryData;Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 1
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .param p5, "limitPosition"    # I
    .param p6, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/query/DeepQuery$QueryData",
            "<TT;>;",
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    .local p1, "queryData":Lcom/sea_monster/dao/query/DeepQuery$QueryData;, "Lcom/sea_monster/dao/query/DeepQuery$QueryData<TT;>;"
    .local p2, "dao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;*>;"
    new-instance v0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;

    invoke-direct {v0, p2}, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;-><init>(Lcom/sea_monster/dao/AbstractDeepDao;)V

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/sea_monster/dao/query/AbstractQuery;-><init>(Lcom/sea_monster/dao/AbstractDao;Lcom/sea_monster/dao/IQueryDaoAccess;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/sea_monster/dao/query/DeepQuery;->queryData:Lcom/sea_monster/dao/query/DeepQuery$QueryData;

    .line 55
    iput p5, p0, Lcom/sea_monster/dao/query/DeepQuery;->limitPosition:I

    .line 56
    iput p6, p0, Lcom/sea_monster/dao/query/DeepQuery;->offsetPosition:I

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/sea_monster/dao/query/DeepQuery$QueryData;Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/String;IILcom/sea_monster/dao/query/DeepQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sea_monster/dao/query/DeepQuery$QueryData;
    .param p2, "x1"    # Lcom/sea_monster/dao/AbstractDeepDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/sea_monster/dao/query/DeepQuery$1;

    .prologue
    .line 16
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-direct/range {p0 .. p6}, Lcom/sea_monster/dao/query/DeepQuery;-><init>(Lcom/sea_monster/dao/query/DeepQuery$QueryData;Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/sea_monster/dao/query/DeepQuery;
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
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "II)",
            "Lcom/sea_monster/dao/query/DeepQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT2;*>;"
    new-instance v0, Lcom/sea_monster/dao/query/DeepQuery$QueryData;

    invoke-static {p2}, Lcom/sea_monster/dao/query/DeepQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sea_monster/dao/query/DeepQuery$QueryData;-><init>(Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 44
    .local v0, "queryData":Lcom/sea_monster/dao/query/DeepQuery$QueryData;, "Lcom/sea_monster/dao/query/DeepQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->forCurrentThread()Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lcom/sea_monster/dao/query/DeepQuery;

    return-object v1
.end method

.method public static internalCreate(Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/DeepQuery;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sea_monster/dao/query/DeepQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT2;*>;"
    const/4 v0, -0x1

    .line 37
    invoke-static {p0, p1, p2, v0, v0}, Lcom/sea_monster/dao/query/DeepQuery;->create(Lcom/sea_monster/dao/AbstractDeepDao;Ljava/lang/String;[Ljava/lang/Object;II)Lcom/sea_monster/dao/query/DeepQuery;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forCurrentThread()Lcom/sea_monster/dao/query/DeepQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/DeepQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->queryData:Lcom/sea_monster/dao/query/DeepQuery$QueryData;

    invoke-virtual {v0, p0}, Lcom/sea_monster/dao/query/DeepQuery$QueryData;->forCurrentThread(Lcom/sea_monster/dao/query/AbstractQuery;)Lcom/sea_monster/dao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lcom/sea_monster/dao/query/DeepQuery;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 116
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

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
    .line 99
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->checkThread()V

    .line 100
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

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
    .line 135
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->listLazyUncached()Lcom/sea_monster/dao/query/LazyList;

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
    .line 110
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->checkThread()V

    .line 111
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/sea_monster/dao/query/LazyList;

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

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
    .line 125
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->checkThread()V

    .line 126
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/sea_monster/dao/query/LazyList;

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/sea_monster/dao/query/LazyList;-><init>(Lcom/sea_monster/dao/IQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public setLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 78
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->checkThread()V

    .line 79
    iget v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->limitPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Limit must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

    iget v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->limitPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    return-void
.end method

.method public setOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->checkThread()V

    .line 91
    iget v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->offsetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Offset must be set with QueryBuilder before it can be used here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

    iget v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->offsetPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    return-void
.end method

.method public setParameter(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 67
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->limitPosition:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sea_monster/dao/query/DeepQuery;->offsetPosition:I

    if-ne p1, v0, :cond_1

    .line 68
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

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sea_monster/dao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)V

    .line 71
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
    .line 146
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->checkThread()V

    .line 147
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v1}, Lcom/sea_monster/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/query/DeepQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lcom/sea_monster/dao/query/DeepQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sea_monster/dao/query/DeepQuery;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

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
    .line 159
    .local p0, "this":Lcom/sea_monster/dao/query/DeepQuery;, "Lcom/sea_monster/dao/query/DeepQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/DeepQuery;->unique()Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 161
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "No entity found for query"

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    return-object v0
.end method
