.class public abstract Lcom/sea_monster/dao/AbstractDeepDao;
.super Lcom/sea_monster/dao/AbstractDao;
.source "AbstractDeepDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sea_monster/dao/AbstractDao",
        "<TT;TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/sea_monster/dao/internal/DaoConfig;

    .prologue
    .line 17
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-direct {p0, p1}, Lcom/sea_monster/dao/AbstractDao;-><init>(Lcom/sea_monster/dao/internal/DaoConfig;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/dao/internal/DaoConfig;Lcom/sea_monster/dao/AbstractDaoSession;)V
    .locals 0
    .param p1, "config"    # Lcom/sea_monster/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/sea_monster/dao/AbstractDaoSession;

    .prologue
    .line 21
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-direct {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;-><init>(Lcom/sea_monster/dao/internal/DaoConfig;Lcom/sea_monster/dao/AbstractDaoSession;)V

    .line 22
    return-void
.end method


# virtual methods
.method public deepQueryBuilder()Lcom/sea_monster/dao/query/DeepQueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/DeepQueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-static {p0}, Lcom/sea_monster/dao/query/DeepQueryBuilder;->internalCreate(Lcom/sea_monster/dao/AbstractDeepDao;)Lcom/sea_monster/dao/query/DeepQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs getDeepCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/String;

    .prologue
    .line 70
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDeepDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDeepDao;->getSelectDeep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDeepJoinString()Ljava/lang/String;
.end method

.method public abstract getSelectDeep()Ljava/lang/String;
.end method

.method public loadAllDeepFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 35
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v2}, Lcom/sea_monster/dao/identityscope/IdentityScope;->lock()V

    .line 40
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v2, v0}, Lcom/sea_monster/dao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 44
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/sea_monster/dao/AbstractDeepDao;->loadCurrentDeep(Landroid/database/Cursor;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v2}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    .line 52
    :cond_1
    return-object v1

    .line 47
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_2

    .line 48
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDeepDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    :cond_2
    throw v2
.end method

.method protected abstract loadCurrentDeep(Landroid/database/Cursor;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)TT;"
        }
    .end annotation
.end method

.method public abstract loadDeep(Ljava/lang/Long;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation
.end method

.method protected loadDeepAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDeepDao;->loadAllDeepFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected loadDeepCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-interface {p1, p2}, Landroid/database/Cursor;->move(I)Z

    .line 75
    invoke-virtual {p0, p1, p3}, Lcom/sea_monster/dao/AbstractDeepDao;->loadCurrentDeep(Landroid/database/Cursor;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadDeepUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 85
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 87
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected unique result, but count was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sea_monster/dao/AbstractDeepDao;->loadDeepCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadDeepUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDeepDao;->loadDeepUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public varargs queryDeep(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;TK;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDeepDao;->getDeepCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDeepDao;->loadDeepAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
