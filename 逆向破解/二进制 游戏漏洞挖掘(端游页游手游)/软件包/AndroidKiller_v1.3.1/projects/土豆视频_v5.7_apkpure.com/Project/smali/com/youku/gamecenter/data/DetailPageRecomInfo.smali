.class public Lcom/youku/gamecenter/data/DetailPageRecomInfo;
.super Ljava/lang/Object;
.source "DetailPageRecomInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# static fields
.field public static final RECOMMEND_TYPE_1:Ljava/lang/String; = "1"

.field public static final RECOMMEND_TYPE_2:Ljava/lang/String; = "0"

.field public static final RECOMMEND_TYPE_BIGDATA:Ljava/lang/String; = "2"


# instance fields
.field public bigdata_ord:Ljava/lang/String;

.field public bigdata_req_id:Ljava/lang/String;

.field public bigdata_ver:Ljava/lang/String;

.field public data_type:I

.field public games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public is_emphasis:Ljava/lang/String;

.field public rec_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->rec_type:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->data_type:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->games:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isRecomType1()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->is_emphasis:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->is_emphasis:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRecomType2()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->is_emphasis:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/DetailPageRecomInfo;->is_emphasis:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method
