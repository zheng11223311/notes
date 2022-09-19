.class public Lcom/youku/vo/HomeChannel;
.super Lcom/youku/vo/Channel;
.source "HomeChannel.java"


# static fields
.field public static final TYP_HOR:I = 0x0

.field public static final TYP_HOR_BOKE:I = 0x2

.field public static final TYP_VER:I = 0x1


# instance fields
.field public channelUIType:I

.field public display_type:I

.field public hasMore:Z

.field public index_page_channel_icon:Ljava/lang/String;

.field public isPodcastChannel:Z

.field public redirect_type:Ljava/lang/String;

.field public title_line:I

.field public url_for_more_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/youku/vo/Channel;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/HomeChannel;->title_line:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/youku/vo/Channel;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/HomeChannel;->title_line:I

    .line 23
    iput-object p1, p0, Lcom/youku/vo/HomeChannel;->channelName:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    .line 25
    return-void
.end method
