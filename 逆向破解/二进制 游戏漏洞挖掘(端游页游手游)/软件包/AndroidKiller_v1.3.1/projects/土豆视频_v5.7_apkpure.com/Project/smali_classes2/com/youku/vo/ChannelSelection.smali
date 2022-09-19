.class public Lcom/youku/vo/ChannelSelection;
.super Lcom/youku/vo/Channel;
.source "ChannelSelection.java"


# instance fields
.field public channelName:Ljava/lang/String;

.field public channelPodcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPodcast;",
            ">;"
        }
    .end annotation
.end field

.field public title_line:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/youku/vo/Channel;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/ChannelSelection;->title_line:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelSelection;->videoList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelSelection;->channelPodcasts:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/youku/vo/Channel;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/ChannelSelection;->title_line:I

    .line 29
    iput-object p1, p0, Lcom/youku/vo/ChannelSelection;->channelName:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelSelection;->videoList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/ChannelSelection;->channelPodcasts:Ljava/util/List;

    .line 32
    return-void
.end method
