.class public final Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;
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
    name = "InternalQueryDeepDaoAccess"
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
.field private final dao:Lcom/sea_monster/dao/AbstractDeepDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sea_monster/dao/AbstractDeepDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/dao/AbstractDeepDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess<TT;>;"
    .local p1, "abstractDao":Lcom/sea_monster/dao/AbstractDeepDao;, "Lcom/sea_monster/dao/AbstractDeepDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    .line 53
    return-void
.end method


# virtual methods
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
    .line 60
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/AbstractDeepDao;->loadDeepAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

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
    .line 56
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sea_monster/dao/AbstractDeepDao;->loadDeepCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

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
    .line 64
    .local p0, "this":Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;, "Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/dao/IQueryDaoAccess$InternalQueryDeepDaoAccess;->dao:Lcom/sea_monster/dao/AbstractDeepDao;

    invoke-virtual {v0, p1}, Lcom/sea_monster/dao/AbstractDeepDao;->loadDeepUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
