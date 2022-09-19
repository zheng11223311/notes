.class public Lcom/youku/vo/DiscoveryItemRecommendUserList;
.super Lcom/youku/vo/DiscoveryItem;
.source "DiscoveryItemRecommendUserList.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/DiscoveryItemRecommendUserListCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/youku/vo/DiscoveryItem;-><init>()V

    return-void
.end method
