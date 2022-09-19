.class public Lcom/youku/vo/ChannalSquareTagItems;
.super Ljava/lang/Object;
.source "ChannalSquareTagItems.java"


# instance fields
.field public code:I

.field public pg:I

.field public pz:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DiscoveryChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    .line 14
    return-void
.end method
