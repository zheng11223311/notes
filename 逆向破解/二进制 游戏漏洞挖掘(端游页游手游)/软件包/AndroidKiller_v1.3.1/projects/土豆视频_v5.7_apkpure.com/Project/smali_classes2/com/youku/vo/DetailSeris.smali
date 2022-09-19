.class public Lcom/youku/vo/DetailSeris;
.super Ljava/lang/Object;
.source "DetailSeris.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/DetailSeris$Languageinfo;,
        Lcom/youku/vo/DetailSeris$MonthData;,
        Lcom/youku/vo/DetailSeris$YearData;
    }
.end annotation


# instance fields
.field public cid:Ljava/lang/String;

.field public completed:Z

.field public datalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DetailSeris$YearData;",
            ">;"
        }
    .end annotation
.end field

.field public day_radio:Z

.field public episodemode:Ljava/lang/String;

.field public langlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DetailSeris$Languageinfo;",
            ">;"
        }
    .end annotation
.end field

.field public pg:I

.field public playlist_name:Ljava/lang/String;

.field public pz:I

.field public seriesmode:Ljava/lang/String;

.field public showcats:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public static cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;
    .locals 3
    .param p0, "seris"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 41
    new-instance v0, Lcom/youku/vo/DetailSeris;

    invoke-direct {v0}, Lcom/youku/vo/DetailSeris;-><init>()V

    .line 42
    .local v0, "detailseris":Lcom/youku/vo/DetailSeris;
    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->playlist_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->playlist_name:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->episodemode:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->episodemode:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->cid:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->showcats:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/DetailSeris;->showcats:Ljava/lang/String;

    .line 47
    iget v1, p0, Lcom/youku/vo/DetailSeris;->pz:I

    iput v1, v0, Lcom/youku/vo/DetailSeris;->pz:I

    .line 48
    iget v1, p0, Lcom/youku/vo/DetailSeris;->pg:I

    iput v1, v0, Lcom/youku/vo/DetailSeris;->pg:I

    .line 49
    iget v1, p0, Lcom/youku/vo/DetailSeris;->total:I

    iput v1, v0, Lcom/youku/vo/DetailSeris;->total:I

    .line 50
    iget-boolean v1, p0, Lcom/youku/vo/DetailSeris;->day_radio:Z

    iput-boolean v1, v0, Lcom/youku/vo/DetailSeris;->day_radio:Z

    .line 51
    iget-object v2, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v2, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-object v0
.end method
