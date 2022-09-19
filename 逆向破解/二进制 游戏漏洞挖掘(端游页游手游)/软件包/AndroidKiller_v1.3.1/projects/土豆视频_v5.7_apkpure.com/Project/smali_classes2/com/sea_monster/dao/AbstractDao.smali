.class public abstract Lcom/sea_monster/dao/AbstractDao;
.super Ljava/lang/Object;
.source "AbstractDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lcom/sea_monster/dao/internal/DaoConfig;

.field protected final db:Landroid/database/sqlite/SQLiteDatabase;

.field protected identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field protected identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/identityscope/IdentityScopeLong",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final pkOrdinal:I

.field protected final session:Lcom/sea_monster/dao/AbstractDaoSession;

.field protected statements:Lcom/sea_monster/dao/internal/TableStatements;


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/internal/DaoConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/sea_monster/dao/internal/DaoConfig;

    .prologue
    .line 71
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;-><init>(Lcom/sea_monster/dao/internal/DaoConfig;Lcom/sea_monster/dao/AbstractDaoSession;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sea_monster/dao/internal/DaoConfig;Lcom/sea_monster/dao/AbstractDaoSession;)V
    .locals 1
    .param p1, "config"    # Lcom/sea_monster/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/sea_monster/dao/AbstractDaoSession;

    .prologue
    .line 75
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    .line 77
    iput-object p2, p0, Lcom/sea_monster/dao/AbstractDao;->session:Lcom/sea_monster/dao/AbstractDaoSession;

    .line 78
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    invoke-virtual {p1}, Lcom/sea_monster/dao/internal/DaoConfig;->getIdentityScope()Lcom/sea_monster/dao/identityscope/IdentityScope;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    .line 80
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    instance-of v0, v0, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    check-cast v0, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    iput-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    .line 83
    :cond_0
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    iput-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    .line 84
    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    iget v0, v0, Lcom/sea_monster/dao/Property;->ordinal:I

    :goto_0
    iput v0, p0, Lcom/sea_monster/dao/AbstractDao;->pkOrdinal:I

    .line 85
    return-void

    .line 84
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    .line 527
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 528
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 534
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 535
    return-void

    .line 529
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    if-nez p1, :cond_1

    .line 530
    new-instance v0, Lcom/sea_monster/dao/DaoException;

    const-string v1, "Cannot delete entity, key is null"

    invoke-direct {v0, v1}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->assertSinglePk()V

    .line 539
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v6}, Lcom/sea_monster/dao/internal/TableStatements;->getDeleteStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 540
    .local v5, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 541
    .local v3, "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 543
    :try_start_0
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 544
    :try_start_1
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v6, :cond_0

    .line 545
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v6}, Lcom/sea_monster/dao/identityscope/IdentityScope;->lock()V

    .line 546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .local v4, "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    move-object v3, v4

    .line 549
    .end local v4    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .restart local v3    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :cond_0
    if-eqz p1, :cond_3

    .line 550
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 551
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 552
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v5}, Lcom/sea_monster/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 553
    if-eqz v3, :cond_1

    .line 554
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 567
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v6

    :try_start_3
    iget-object v7, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v7, :cond_2

    .line 568
    iget-object v7, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v7}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    :cond_2
    throw v6

    .line 571
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 577
    :catchall_2
    move-exception v6

    iget-object v7, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 558
    :cond_3
    if-eqz p2, :cond_5

    .line 559
    :try_start_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 560
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v2, v5}, Lcom/sea_monster/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 561
    if-eqz v3, :cond_4

    .line 562
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 567
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_5
    :try_start_6
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v6, :cond_6

    .line 568
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v6}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    .line 571
    :cond_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 572
    :try_start_7
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 573
    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v6, :cond_7

    .line 574
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v6, v3}, Lcom/sea_monster/dao/identityscope/IdentityScope;->remove(Ljava/lang/Iterable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 577
    :cond_7
    iget-object v6, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 579
    return-void
.end method

.method private executeInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 4
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            ")J"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    monitor-enter p2

    .line 340
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/sea_monster/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 342
    .local v0, "rowId":J
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sea_monster/dao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    .line 357
    return-wide v0

    .line 342
    .end local v0    # "rowId":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 347
    :try_start_2
    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 348
    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/sea_monster/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 350
    .restart local v0    # "rowId":J
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    :try_start_4
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 353
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 350
    .end local v0    # "rowId":J
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 353
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private executeInsertInTx(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Iterable;Z)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 262
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 263
    :try_start_1
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lcom/sea_monster/dao/identityscope/IdentityScope;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    :cond_0
    :try_start_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 268
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 269
    if-eqz p3, :cond_2

    .line 270
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 271
    .local v2, "rowId":J
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sea_monster/dao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 277
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v4

    :try_start_3
    iget-object v5, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v5, :cond_1

    .line 278
    iget-object v5, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v5}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    :cond_1
    throw v4

    .line 281
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 284
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 273
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 277
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_6
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_4

    .line 278
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    .line 281
    :cond_4
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 282
    :try_start_7
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 284
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    return-void
.end method


# virtual methods
.method protected assertSinglePk()V
    .locals 3

    .prologue
    .line 754
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 755
    new-instance v0, Lcom/sea_monster/dao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v2, v2, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not have a single-column primary key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    return-void
.end method

.method protected attachEntity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected final attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 695
    if-eqz p3, :cond_1

    .line 696
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v0, p1, p2}, Lcom/sea_monster/dao/identityscope/IdentityScope;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v0, p1, p2}, Lcom/sea_monster/dao/identityscope/IdentityScope;->putNoLock(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public count()J
    .locals 4

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    const/16 v3, 0x27

    .line 760
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v2, v2, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->assertSinglePk()V

    .line 497
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 488
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v2, v2, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v0}, Lcom/sea_monster/dao/identityscope/IdentityScope;->clear()V

    .line 492
    :cond_0
    return-void
.end method

.method public deleteByKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->assertSinglePk()V

    .line 504
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v1}, Lcom/sea_monster/dao/internal/TableStatements;->getDeleteStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 505
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    monitor-enter v0

    .line 507
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 508
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v1, p1}, Lcom/sea_monster/dao/identityscope/IdentityScope;->remove(Ljava/lang/Object;)V

    .line 524
    :cond_0
    return-void

    .line 508
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 513
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 514
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V

    .line 515
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    :try_start_4
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 518
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 515
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 518
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sea_monster/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 609
    return-void
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 619
    return-void
.end method

.method public deleteInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 589
    return-void
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sea_monster/dao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 599
    return-void
.end method

.method public detach(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v1, v0, p1}, Lcom/sea_monster/dao/identityscope/IdentityScope;->detach(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 179
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 779
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected abstract getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation
.end method

.method protected getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 766
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_1

    .line 767
    if-nez p1, :cond_0

    .line 768
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Entity may not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 770
    :cond_0
    new-instance v1, Lcom/sea_monster/dao/DaoException;

    const-string v2, "Entity has no key"

    invoke-direct {v1, v2}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :cond_1
    return-object v0
.end method

.method public getNonPkColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkProperty()Lcom/sea_monster/dao/Property;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->pkProperty:Lcom/sea_monster/dao/Property;

    return-object v0
.end method

.method public getProperties()[Lcom/sea_monster/dao/Property;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->properties:[Lcom/sea_monster/dao/Property;

    return-object v0
.end method

.method public getSession()Lcom/sea_monster/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->session:Lcom/sea_monster/dao/AbstractDaoSession;

    return-object v0
.end method

.method getStatements()Lcom/sea_monster/dao/internal/TableStatements;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    return-object v0
.end method

.method public getTablename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v0, v0, Lcom/sea_monster/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v0}, Lcom/sea_monster/dao/internal/TableStatements;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->executeInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    .line 199
    return-void
.end method

.method public insertInTx(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v1}, Lcom/sea_monster/dao/internal/TableStatements;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 222
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->executeInsertInTx(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Iterable;Z)V

    .line 223
    return-void
.end method

.method public varargs insertInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sea_monster/dao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    .line 209
    return-void
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v0}, Lcom/sea_monster/dao/internal/TableStatements;->getInsertOrReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->executeInsert(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    .line 247
    return-void
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v1}, Lcom/sea_monster/dao/internal/TableStatements;->getInsertOrReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 236
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0, v0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->executeInsertInTx(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Iterable;Z)V

    .line 237
    return-void
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sea_monster/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    .line 257
    return-void
.end method

.method public insertWithoutSettingPk(Ljava/lang/Object;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v3}, Lcom/sea_monster/dao/internal/TableStatements;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 306
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    monitor-enter v2

    .line 308
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/sea_monster/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 310
    .local v0, "rowId":J
    monitor-exit v2

    .line 324
    :goto_0
    return-wide v0

    .line 310
    .end local v0    # "rowId":J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 313
    :cond_0
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 315
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 316
    :try_start_2
    invoke-virtual {p0, v2, p1}, Lcom/sea_monster/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 318
    .restart local v0    # "rowId":J
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    :try_start_3
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 321
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 318
    .end local v0    # "rowId":J
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 321
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method protected abstract isEntityUpdateable()Z
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->assertSinglePk()V

    .line 128
    if-nez p1, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 140
    :cond_0
    :goto_0
    return-object v1

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4, p1}, Lcom/sea_monster/dao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 137
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v4}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 139
    .local v2, "keyArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 140
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public loadAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v2}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
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
    .line 185
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 187
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
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
    .line 372
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 373
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v3, p1, Landroid/database/CrossProcessCursor;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 375
    check-cast v3, Landroid/database/CrossProcessCursor;

    invoke-interface {v3}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    .line 376
    .local v2, "window":Landroid/database/CursorWindow;
    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 378
    new-instance p1, Lcom/sea_monster/dao/internal/FastCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    invoke-direct {p1, v2}, Lcom/sea_monster/dao/internal/FastCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 385
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lcom/sea_monster/dao/identityscope/IdentityScope;->lock()V

    .line 388
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v3, v0}, Lcom/sea_monster/dao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 392
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcom/sea_monster/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_2

    .line 396
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    .line 400
    :cond_2
    return-object v1

    .line 380
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window vs. result size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v2    # "window":Landroid/database/CursorWindow;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_4

    .line 396
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    :cond_4
    throw v3
.end method

.method public loadByRowId(J)Ljava/lang/Object;
    .locals 5
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 145
    .local v1, "idArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v3}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectByRowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected final loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 5
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
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    .line 405
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    if-eqz v4, :cond_4

    .line 406
    if-eqz p2, :cond_1

    .line 408
    iget v4, p0, Lcom/sea_monster/dao/AbstractDao;->pkOrdinal:I

    add-int/2addr v4, p2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    iget v4, p0, Lcom/sea_monster/dao/AbstractDao;->pkOrdinal:I

    add-int/2addr v4, p2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 414
    .local v2, "key":J
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3}, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;->get2(J)Ljava/lang/Object;

    move-result-object v0

    .line 415
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 419
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 420
    if-eqz p3, :cond_3

    .line 421
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3, v0}, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;->put2(JLjava/lang/Object;)V

    goto :goto_0

    .line 414
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3}, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;->get2NoLock(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 423
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScopeLong:Lcom/sea_monster/dao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3, v0}, Lcom/sea_monster/dao/identityscope/IdentityScopeLong;->put2NoLock(JLjava/lang/Object;)V

    goto :goto_0

    .line 427
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v2    # "key":J
    :cond_4
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_7

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 429
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_5

    if-eqz v1, :cond_0

    .line 433
    :cond_5
    if-eqz p3, :cond_6

    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4, v1}, Lcom/sea_monster/dao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 434
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    :goto_2
    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 438
    invoke-virtual {p0, v1, v0, p3}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 433
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_6
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4, v1}, Lcom/sea_monster/dao/identityscope/IdentityScope;->getNoLock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 443
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_7
    if-eqz p2, :cond_8

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 445
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 450
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 451
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final loadCurrentOther(Lcom/sea_monster/dao/AbstractDao;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TO;*>;",
            "Landroid/database/Cursor;",
            "I)TO;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TO;*>;"
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/sea_monster/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
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
    .line 158
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 159
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 164
    :goto_0
    return-object v1

    .line 161
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
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

    .line 164
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sea_monster/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
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
    .line 151
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public queryBuilder()Lcom/sea_monster/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    invoke-static {p0}, Lcom/sea_monster/dao/query/QueryBuilder;->internalCreate(Lcom/sea_monster/dao/AbstractDao;)Lcom/sea_monster/dao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    .line 463
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v3}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs queryRawCreate(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/Query;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sea_monster/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 473
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lcom/sea_monster/dao/AbstractDao;->queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lcom/sea_monster/dao/query/Query;

    move-result-object v1

    return-object v1
.end method

.method public queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lcom/sea_monster/dao/query/Query;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sea_monster/dao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p2, "selectionArg":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v1}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sea_monster/dao/query/Query;->internalCreate(Lcom/sea_monster/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sea_monster/dao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected abstract readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TT;I)V"
        }
    .end annotation
.end method

.method protected abstract readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->assertSinglePk()V

    .line 624
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 625
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v5}, Lcom/sea_monster/dao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, "sql":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 627
    .local v3, "keyArray":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 629
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 630
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 631
    new-instance v5, Lcom/sea_monster/dao/DaoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entity does not exist in the database anymore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local v0    # "available":Z
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 633
    .restart local v0    # "available":Z
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 634
    new-instance v5, Lcom/sea_monster/dao/DaoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected unique result, but count was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 636
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v1, p1, v5}, Lcom/sea_monster/dao/AbstractDao;->readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V

    .line 637
    const/4 v5, 0x1

    invoke-virtual {p0, v2, p1, v5}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 641
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->assertSinglePk()V

    .line 645
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v1}, Lcom/sea_monster/dao/internal/TableStatements;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 646
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    monitor-enter v0

    .line 648
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/sea_monster/dao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    .line 649
    monitor-exit v0

    .line 662
    :goto_0
    return-void

    .line 649
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 654
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 655
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/sea_monster/dao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    .line 656
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 657
    :try_start_3
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 659
    iget-object v1, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 656
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 659
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public updateInTx(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->statements:Lcom/sea_monster/dao/internal/TableStatements;

    invoke-virtual {v3}, Lcom/sea_monster/dao/internal/TableStatements;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 721
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 723
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 724
    :try_start_1
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lcom/sea_monster/dao/identityscope/IdentityScope;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 728
    :cond_0
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 729
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sea_monster/dao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 732
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v4, :cond_1

    .line 733
    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v4}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    :cond_1
    throw v3

    .line 736
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 739
    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 732
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->identityScope:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v3}, Lcom/sea_monster/dao/identityscope/IdentityScope;->unlock()V

    .line 736
    :cond_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 737
    :try_start_6
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 739
    iget-object v3, p0, Lcom/sea_monster/dao/AbstractDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 741
    return-void
.end method

.method public varargs updateInTx([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 751
    return-void
.end method

.method protected updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    .locals 4
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p1}, Lcom/sea_monster/dao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 671
    iget-object v2, p0, Lcom/sea_monster/dao/AbstractDao;->config:Lcom/sea_monster/dao/internal/DaoConfig;

    iget-object v2, v2, Lcom/sea_monster/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 672
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lcom/sea_monster/dao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 673
    .local v1, "key":Ljava/lang/Object;, "TK;"
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 674
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 680
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 681
    invoke-virtual {p0, v1, p1, p3}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 682
    return-void

    .line 675
    :cond_0
    if-nez v1, :cond_1

    .line 676
    new-instance v2, Lcom/sea_monster/dao/DaoException;

    const-string v3, "Cannot update entity without key - was it inserted before?"

    invoke-direct {v2, v3}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TK;"
        }
    .end annotation
.end method

.method protected updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    .locals 4
    .param p2, "rowId"    # J
    .param p4, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0, p1, p2, p3}, Lcom/sea_monster/dao/AbstractDao;->updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, p1, p4}, Lcom/sea_monster/dao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 368
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v1, "Could not insert row (executeInsert returned -1)"

    invoke-static {v1}, Lcom/sea_monster/dao/DaoLog;->w(Ljava/lang/String;)I

    goto :goto_0
.end method
