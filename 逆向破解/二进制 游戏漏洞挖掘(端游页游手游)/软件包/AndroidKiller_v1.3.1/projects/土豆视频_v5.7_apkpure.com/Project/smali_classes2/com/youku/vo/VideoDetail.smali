.class public Lcom/youku/vo/VideoDetail;
.super Ljava/lang/Object;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/VideoDetail$Language;,
        Lcom/youku/vo/VideoDetail$Address;,
        Lcom/youku/vo/VideoDetail$Site;
    }
.end annotation


# instance fields
.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoDetail$Address;",
            ">;"
        }
    .end annotation
.end field

.field public area:Ljava/lang/String;

.field public audiolang:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoDetail$Language;",
            ">;"
        }
    .end annotation
.end field

.field public cats:Ljava/lang/String;

.field public curpg:I

.field public defaultTab:Ljava/lang/String;

.field public default_site:I

.field public desc:Ljava/lang/String;

.field public director:Ljava/lang/String;

.field public episode_total:I

.field public format_flag:I

.field public genre:Ljava/lang/String;

.field public hasSeries:Z

.field public history_stage:I

.field public history_title:Ljava/lang/String;

.field public history_vid:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public img_type:Ljava/lang/String;

.field public inner_site:I

.field public item_img:Ljava/lang/String;

.field public limit:I

.field public original:Ljava/lang/String;

.field public performer:Ljava/lang/String;

.field public pubdate:Ljava/lang/String;

.field public pz:I

.field public relatedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RelatedVideo;",
            ">;"
        }
    .end annotation
.end field

.field public releasedate:Ljava/lang/String;

.field public reputation:F

.field public seriesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SeriesVideo;",
            ">;"
        }
    .end annotation
.end field

.field public seriesmode:Ljava/lang/String;

.field public showdate:Ljava/lang/String;

.field public showid:Ljava/lang/String;

.field public singer:Ljava/lang/String;

.field public siteId:Ljava/lang/String;

.field public site_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoDetail$Site;",
            ">;"
        }
    .end annotation
.end field

.field source_site:I

.field public station:Ljava/lang/String;

.field public stripe_bottom:Ljava/lang/String;

.field public style:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field total:I

.field public total_comment:I

.field public total_down:I

.field public total_fav:I

.field public total_up:I

.field public total_vv:Ljava/lang/String;

.field public totlepg:I

.field public username:Ljava/lang/String;

.field public vcode:Ljava/lang/String;

.field public videoid:Ljava/lang/String;

.field public voice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/VideoDetail;->limit:I

    .line 132
    return-void
.end method


# virtual methods
.method public getSitName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/VideoDetail$Site;

    iget-object v1, v1, Lcom/youku/vo/VideoDetail$Site;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/VideoDetail$Site;

    iget-object v1, v1, Lcom/youku/vo/VideoDetail$Site;->title:Ljava/lang/String;

    .line 99
    :goto_1
    return-object v1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSiteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/VideoDetail$Site;

    iget-object v1, v1, Lcom/youku/vo/VideoDetail$Site;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/VideoDetail$Site;

    iget-object v1, v1, Lcom/youku/vo/VideoDetail$Site;->icon:Ljava/lang/String;

    .line 115
    :goto_1
    return-object v1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public siteHasYouku()Z
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/VideoDetail$Site;

    iget-object v1, v1, Lcom/youku/vo/VideoDetail$Site;->title:Ljava/lang/String;

    const-string v2, "\u4f18\u9177"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/vo/VideoDetail;->site_items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/VideoDetail$Site;

    iget-object v1, v1, Lcom/youku/vo/VideoDetail$Site;->id:Ljava/lang/String;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x1

    .line 107
    :goto_1
    return v1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
