.class public Lcom/youku/vo/ChannelListV5;
.super Ljava/lang/Object;
.source "ChannelListV5.java"


# instance fields
.field public results:Lcom/youku/vo/ChannelListResults;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/youku/vo/ChannelListResults;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "results"    # Lcom/youku/vo/ChannelListResults;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/youku/vo/ChannelListV5;->status:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    .line 18
    return-void
.end method
