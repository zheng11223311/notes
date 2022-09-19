.class public Lcom/youku/vo/ChannelSortBean;
.super Ljava/lang/Object;
.source "ChannelSortBean.java"


# instance fields
.field public channelBean:Lcom/youku/vo/Channels;

.field public recommandBean:Lcom/youku/vo/EditorRecommand;

.field public tagBean:Lcom/youku/vo/MyTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/vo/ChannelSortBean;->channelBean:Lcom/youku/vo/Channels;

    iget-object v0, v0, Lcom/youku/vo/Channels;->channels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecommandTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Tags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/vo/ChannelSortBean;->recommandBean:Lcom/youku/vo/EditorRecommand;

    iget-object v0, v0, Lcom/youku/vo/EditorRecommand;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Tags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/youku/vo/ChannelSortBean;->tagBean:Lcom/youku/vo/MyTag;

    iget-object v0, v0, Lcom/youku/vo/MyTag;->tags:Ljava/util/ArrayList;

    return-object v0
.end method
