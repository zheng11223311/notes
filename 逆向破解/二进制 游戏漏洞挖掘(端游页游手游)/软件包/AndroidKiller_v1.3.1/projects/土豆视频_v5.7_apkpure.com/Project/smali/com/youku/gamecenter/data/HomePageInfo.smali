.class public Lcom/youku/gamecenter/data/HomePageInfo;
.super Ljava/lang/Object;
.source "HomePageInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field public boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HomePageBoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field public editor_recs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HomePageRecomInfo;",
            ">;"
        }
    .end annotation
.end field

.field public homePageIndex:I

.field public page_count:I

.field public slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/youku/gamecenter/data/HomePageInfo;->homePageIndex:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageInfo;->boxes:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageInfo;->slides:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageInfo;->editor_recs:Ljava/util/List;

    .line 13
    iput v1, p0, Lcom/youku/gamecenter/data/HomePageInfo;->page_count:I

    return-void
.end method
