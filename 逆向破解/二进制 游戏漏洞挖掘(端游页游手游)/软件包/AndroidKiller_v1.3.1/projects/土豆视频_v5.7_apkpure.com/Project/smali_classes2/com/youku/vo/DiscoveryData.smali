.class public Lcom/youku/vo/DiscoveryData;
.super Ljava/lang/Object;
.source "DiscoveryData.java"


# instance fields
.field public code:I

.field public rec_videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/RecVideo;",
            ">;"
        }
    .end annotation
.end field

.field public results:Lcom/youku/vo/DiscoveryDataWithoutRecomVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/GameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/vo/DiscoveryData;->results:Lcom/youku/vo/DiscoveryDataWithoutRecomVideo;

    iget-object v0, v0, Lcom/youku/vo/DiscoveryDataWithoutRecomVideo;->game:Ljava/util/List;

    return-object v0
.end method
