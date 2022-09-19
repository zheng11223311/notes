.class public final Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;
.super Ljava/lang/Object;
.source "IQueryDaoAccess.java"

# interfaces
.implements Lcom/sea_monster/dao/IQueryDaoAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/IQueryDaoAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalQueryDaoAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sea_monster/dao/IQueryDaoAccess",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dao:Lcom/sea_monster/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/AbstractDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess<TT;>;"
    .local p1, "abstractDao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    .line 25
    return-void
.end method

.method public static getStatements(Lcom/sea_monster/dao/AbstractDao;)Lcom/sea_monster/dao/internal/TableStatements;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/dao/AbstractDao",
            "<TT2;*>;)",
            "Lcom/sea_monster/dao/internal/TableStatements;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "dao":Lcom/sea_monster/dao/AbstractDao;, "Lcom/sea_monster/dao/AbstractDao<TT2;*>;"
    invoke-virtual {p0}, Lcom/sea_monster/dao/AbstractDao;->getStatements()Lcom/sea_monster/dao/internal/TableStatements;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStatements()Lcom/sea_monster/dao/internal/TableStatements;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0}, Lcom/sea_monster/dao/AbstractDao;->getStatements()Lcom/sea_monster/dao/internal/TableStatements;

    move-result-object v0

    return-object v0
.end method

.method public loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
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
    .line 32
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
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
    .line 28
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sea_monster/dao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
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
    .line 36
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDao;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
