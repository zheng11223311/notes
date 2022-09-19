.class public Lcom/youku/gamecenter/data/SearchKeywordsInfo;
.super Ljava/lang/Object;
.source "SearchKeywordsInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field private allInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/SearchKeywordsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public id:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->allInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/youku/gamecenter/data/SearchKeywordsInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/data/SearchKeywordsInfo;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->allInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public getAllKeyWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/SearchKeywordsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->allInfos:Ljava/util/List;

    return-object v0
.end method
