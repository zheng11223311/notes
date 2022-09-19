.class public Lcom/youku/vo/DetailRecomment;
.super Ljava/lang/Object;
.source "DetailRecomment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public clicklog_abver:Ljava/lang/String;

.field public clicklog_apt:Ljava/lang/String;

.field public clicklog_md:Ljava/lang/String;

.field public clicklog_ord:Ljava/lang/String;

.field public clicklog_pcode:Ljava/lang/String;

.field public clicklog_pg:Ljava/lang/String;

.field public clicklog_req_id:Ljava/lang/String;

.field public clicllog_juid:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public mVideoType:Lcom/tudou/android/Youku$VideoType;

.field public pg:I

.field public pz:I

.field public relatedlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RelatedVideo;",
            ">;"
        }
    .end annotation
.end field

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/youku/vo/RelatedVideo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/RelatedVideo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
