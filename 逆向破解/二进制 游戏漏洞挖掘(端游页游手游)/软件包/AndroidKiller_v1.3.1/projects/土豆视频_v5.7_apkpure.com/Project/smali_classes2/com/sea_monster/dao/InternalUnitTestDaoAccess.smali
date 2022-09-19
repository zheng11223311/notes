.class public Lcom/sea_monster/dao/InternalUnitTestDaoAccess;
.super Ljava/lang/Object;
.source "InternalUnitTestDaoAccess.java"


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
.field private final dao:Lcom/sea_monster/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Lcom/sea_monster/dao/identityscope/IdentityScope;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;TK;>;>;",
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    .local p2, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sea_monster/dao/AbstractDao<TT;TK;>;>;"
    .local p3, "identityScope":Lcom/sea_monster/dao/identityscope/IdentityScope;, "Lcom/sea_monster/dao/identityscope/IdentityScope<**>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Lcom/sea_monster/dao/internal/DaoConfig;

    invoke-direct {v1, p1, p2}, Lcom/sea_monster/dao/internal/DaoConfig;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V

    .line 34
    .local v1, "daoConfig":Lcom/sea_monster/dao/internal/DaoConfig;
    invoke-virtual {v1, p3}, Lcom/sea_monster/dao/internal/DaoConfig;->setIdentityScope(Lcom/sea_monster/dao/identityscope/IdentityScope;)V

    .line 35
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lcom/sea_monster/dao/internal/DaoConfig;

    aput-object v3, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 36
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/sea_monster/dao/AbstractDao<TT;TK;>;>;"
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sea_monster/dao/AbstractDao;

    iput-object v2, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    .line 37
    return-void
.end method


# virtual methods
.method public getDao()Lcom/sea_monster/dao/AbstractDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()[Lcom/sea_monster/dao/Property;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->getProperties()[Lcom/sea_monster/dao/Property;

    move-result-object v0

    return-object v0
.end method

.method public isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/sea_monster/dao/InternalUnitTestDaoAccess;, "Lcom/sea_monster/dao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lcom/sea_monster/dao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
