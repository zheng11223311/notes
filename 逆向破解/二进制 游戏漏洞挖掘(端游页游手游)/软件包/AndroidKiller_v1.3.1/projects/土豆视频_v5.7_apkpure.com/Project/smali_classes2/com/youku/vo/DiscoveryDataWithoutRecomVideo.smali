.class public Lcom/youku/vo/DiscoveryDataWithoutRecomVideo;
.super Ljava/lang/Object;
.source "DiscoveryDataWithoutRecomVideo.java"


# instance fields
.field public channel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/DiscoveryChannelTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/GameItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
