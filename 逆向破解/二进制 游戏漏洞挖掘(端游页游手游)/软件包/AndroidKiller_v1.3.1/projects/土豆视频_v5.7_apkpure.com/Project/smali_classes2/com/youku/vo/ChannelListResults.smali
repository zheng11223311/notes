.class public Lcom/youku/vo/ChannelListResults;
.super Ljava/lang/Object;
.source "ChannelListResults.java"


# instance fields
.field public channel_lists_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public comment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "channel_lists_inf":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/youku/vo/ChannelListResults;->comment:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    .line 15
    return-void
.end method
