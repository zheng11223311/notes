.class public Lcom/youku/vo/ChannelListSkipInfo;
.super Ljava/lang/Object;
.source "ChannelListSkipInfo.java"


# instance fields
.field public brief_filter:Ljava/lang/String;

.field public brief_sort_by:Ljava/lang/String;

.field public channel_id:I

.field public first_tag_id:Ljava/lang/String;

.field public skip_type:Ljava/lang/String;

.field public skip_url:Ljava/lang/String;

.field public tag_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "skip_type"    # Ljava/lang/String;
    .param p2, "tag_type"    # Ljava/lang/String;
    .param p3, "brief_sort_by"    # Ljava/lang/String;
    .param p4, "brief_filter"    # Ljava/lang/String;
    .param p5, "first_tag_id"    # Ljava/lang/String;
    .param p6, "channel_id"    # I
    .param p7, "skip_url"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/youku/vo/ChannelListSkipInfo;->skip_type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/youku/vo/ChannelListSkipInfo;->tag_type:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/youku/vo/ChannelListSkipInfo;->brief_sort_by:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/youku/vo/ChannelListSkipInfo;->brief_filter:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/youku/vo/ChannelListSkipInfo;->first_tag_id:Ljava/lang/String;

    .line 16
    iput p6, p0, Lcom/youku/vo/ChannelListSkipInfo;->channel_id:I

    .line 17
    iput-object p7, p0, Lcom/youku/vo/ChannelListSkipInfo;->skip_url:Ljava/lang/String;

    .line 19
    return-void
.end method
