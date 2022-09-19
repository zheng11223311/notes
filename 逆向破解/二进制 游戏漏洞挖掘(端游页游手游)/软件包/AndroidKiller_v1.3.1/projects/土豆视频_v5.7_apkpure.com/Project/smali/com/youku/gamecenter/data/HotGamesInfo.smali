.class public Lcom/youku/gamecenter/data/HotGamesInfo;
.super Ljava/lang/Object;
.source "HotGamesInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field private allInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HotGamesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public app_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public logo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HotGamesInfo;->allInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/youku/gamecenter/data/HotGamesInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/data/HotGamesInfo;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/gamecenter/data/HotGamesInfo;->allInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public getAllHotGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HotGamesInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youku/gamecenter/data/HotGamesInfo;->allInfos:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/gamecenter/data/HotGamesInfo;->logo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/youku/gamecenter/data/HotGamesInfo;->logo:Ljava/lang/String;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
