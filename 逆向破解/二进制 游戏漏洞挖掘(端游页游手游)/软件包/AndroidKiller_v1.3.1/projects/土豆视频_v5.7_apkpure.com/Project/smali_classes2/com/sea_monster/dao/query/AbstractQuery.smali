.class abstract Lcom/sea_monster/dao/query/AbstractQuery;
.super Ljava/lang/Object;
.source "AbstractQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final dao:Lcom/sea_monster/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field protected final daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/IQueryDaoAccess",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final ownerThread:Ljava/lang/Thread;

.field protected final parameters:[Ljava/lang/String;

.field protected final sql:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sea_monster/dao/AbstractDao;Lcom/sea_monster/dao/IQueryDaoAccess;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "parameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;",
            "Lcom/sea_monster/dao/IQueryDaoAccess",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/sea_monster/dao/query/AbstractQuery;, "Lcom/sea_monster/dao/query/AbstractQuery<TT;>;"
    .local p1, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    .local p2, "daoAccess":Lcom/sea_monster/dao/IQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sea_monster/dao/query/AbstractQuery;->dao:Lcom/sea_monster/dao/AbstractDao;

    .line 54
    iput-object p2, p0, Lcom/sea_monster/dao/query/AbstractQuery;->daoAccess:Lcom/sea_monster/dao/IQueryDaoAccess;

    .line 55
    iput-object p3, p0, Lcom/sea_monster/dao/query/AbstractQuery;->sql:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/sea_monster/dao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/dao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    .line 58
    return-void
.end method

.method protected static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 39
    array-length v1, p0

    .line 40
    .local v1, "length":I
    new-array v3, v1, [Ljava/lang/String;

    .line 41
    .local v3, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 42
    aget-object v2, p0, v0

    .line 43
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 41
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 49
    .end local v2    # "object":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lcom/sea_monster/dao/query/AbstractQuery;, "Lcom/sea_monster/dao/query/AbstractQuery<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sea_monster/dao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/sea_monster/dao/DaoException;

    const-string v1, "Method may be called only in owner thread, use forCurrentThread to get an instance for this thread"

    invoke-direct {v0, v1}, Lcom/sea_monster/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method public setParameter(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Lcom/sea_monster/dao/query/AbstractQuery;, "Lcom/sea_monster/dao/query/AbstractQuery<TT;>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/query/AbstractQuery;->checkThread()V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sea_monster/dao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/dao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method
