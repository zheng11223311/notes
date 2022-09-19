.class public Lcom/youku/vo/ChannelSimpleItem;
.super Ljava/lang/Object;
.source "ChannelSimpleItem.java"


# static fields
.field private static final COLUMN_ID:Ljava/lang/String; = "columnid"

.field private static final COLUMN_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private channelId:I

.field private channelName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelSimpleItem(Lorg/json/JSONObject;)Lcom/youku/vo/ChannelSimpleItem;
    .locals 2
    .param p0, "aObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    new-instance v0, Lcom/youku/vo/ChannelSimpleItem;

    invoke-direct {v0}, Lcom/youku/vo/ChannelSimpleItem;-><init>()V

    .line 32
    .local v0, "item":Lcom/youku/vo/ChannelSimpleItem;
    const-string v1, "columnid"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/vo/ChannelSimpleItem;->channelId:I

    .line 33
    const-string v1, "title"

    invoke-static {p0, v1}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/ChannelSimpleItem;->channelName:Ljava/lang/String;

    .line 34
    return-object v0
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/youku/vo/ChannelSimpleItem;->channelId:I

    return v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/vo/ChannelSimpleItem;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/youku/vo/ChannelSimpleItem;->channelId:I

    .line 20
    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/vo/ChannelSimpleItem;->channelName:Ljava/lang/String;

    .line 28
    return-void
.end method
