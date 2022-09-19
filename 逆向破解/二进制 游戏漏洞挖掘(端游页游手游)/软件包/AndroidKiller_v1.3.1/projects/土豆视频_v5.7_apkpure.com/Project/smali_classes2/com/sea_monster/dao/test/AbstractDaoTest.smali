.class public abstract Lcom/sea_monster/dao/test/AbstractDaoTest;
.super Lcom/sea_monster/dao/test/DbTest;
.source "AbstractDaoTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/sea_monster/dao/AbstractDao",
        "<TT;TK;>;T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sea_monster/dao/test/DbTest;"
    }
.end annotation


# instance fields
.field protected dao:Lcom/sea_monster/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected daoAccess:Lcom/sea_monster/dao/InternalUnitTestDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/InternalUnitTestDaoAccess",
            "<TT;TK;>;"
        }
    .end annotation
.end field

.field protected final daoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TD;>;"
        }
    .end annotation
.end field

.field protected identityScopeForDao:Lcom/sea_monster/dao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field protected pkColumn:Lcom/sea_monster/dao/Property;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sea_monster/dao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "inMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-direct {p0, p2}, Lcom/sea_monster/dao/test/DbTest;-><init>(Z)V

    .line 55
    iput-object p1, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    .line 56
    return-void
.end method


# virtual methods
.method protected clearIdentityScopeIfAny()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->identityScopeForDao:Lcom/sea_monster/dao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->identityScopeForDao:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-interface {v0}, Lcom/sea_monster/dao/identityscope/IdentityScope;->clear()V

    .line 87
    const-string v0, "Identity scope cleared"

    invoke-static {v0}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "No identity scope to clear"

    invoke-static {v0}, Lcom/sea_monster/dao/DaoLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logTableDump()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sea_monster/dao/test/AbstractDaoTest;->logTableDump(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setIdentityScopeBeforeSetUp(Lcom/sea_monster/dao/identityscope/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/identityscope/IdentityScope",
            "<TK;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    .local p1, "identityScope":Lcom/sea_monster/dao/identityscope/IdentityScope;, "Lcom/sea_monster/dao/identityscope/IdentityScope<TK;TT;>;"
    iput-object p1, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->identityScopeForDao:Lcom/sea_monster/dao/identityscope/IdentityScope;

    .line 60
    return-void
.end method

.method protected setUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    invoke-super {p0}, Lcom/sea_monster/dao/test/DbTest;->setUp()V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/sea_monster/dao/test/AbstractDaoTest;->setUpTableForDao()V

    .line 68
    new-instance v1, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;

    iget-object v2, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->identityScopeForDao:Lcom/sea_monster/dao/identityscope/IdentityScope;

    invoke-direct {v1, v2, v3, v4}, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Lcom/sea_monster/dao/identityscope/IdentityScope;)V

    iput-object v1, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->daoAccess:Lcom/sea_monster/dao/InternalUnitTestDaoAccess;

    .line 69
    iget-object v1, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->daoAccess:Lcom/sea_monster/dao/InternalUnitTestDaoAccess;

    invoke-virtual {v1}, Lcom/sea_monster/dao/InternalUnitTestDaoAccess;->getDao()Lcom/sea_monster/dao/AbstractDao;

    move-result-object v1

    iput-object v1, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->dao:Lcom/sea_monster/dao/AbstractDao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not prepare DAO Test"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setUpTableForDao()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/sea_monster/dao/test/AbstractDaoTest;, "Lcom/sea_monster/dao/test/AbstractDaoTest<TD;TT;TK;>;"
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    const-string v3, "createTable"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    .local v0, "createTableMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sea_monster/dao/test/AbstractDaoTest;->db:Landroid/database/sqlite/SQLiteDatabase;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "createTableMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "No createTable method"

    invoke-static {v2}, Lcom/sea_monster/dao/DaoLog;->i(Ljava/lang/String;)I

    goto :goto_0
.end method
