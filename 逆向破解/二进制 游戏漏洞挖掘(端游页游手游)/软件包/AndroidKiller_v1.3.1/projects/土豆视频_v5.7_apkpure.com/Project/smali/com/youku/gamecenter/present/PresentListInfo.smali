.class public Lcom/youku/gamecenter/present/PresentListInfo;
.super Ljava/lang/Object;
.source "PresentListInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# static fields
.field public static pz:I


# instance fields
.field private allPresents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private page_count:I

.field private pg:Ljava/lang/String;

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x28

    sput v0, Lcom/youku/gamecenter/present/PresentListInfo;->pz:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public AddPresent(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 1
    .param p1, "present"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public addToPresentInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    :cond_0
    return-void
.end method

.method public getAllPresents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->page_count:I

    return v0
.end method

.method public getPresentInfos(I)Ljava/util/List;
    .locals 1
    .param p1, "tab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentListInfo;->allPresents:Ljava/util/List;

    return-object v0
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pg"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/gamecenter/present/PresentListInfo;->pg:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "page_count"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/youku/gamecenter/present/PresentListInfo;->page_count:I

    .line 39
    return-void
.end method
