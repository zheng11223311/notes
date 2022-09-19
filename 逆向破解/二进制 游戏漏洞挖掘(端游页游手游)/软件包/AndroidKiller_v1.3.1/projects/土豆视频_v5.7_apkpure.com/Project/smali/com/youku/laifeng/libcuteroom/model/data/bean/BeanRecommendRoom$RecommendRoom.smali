.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;
.super Ljava/lang/Object;
.source "BeanRecommendRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendRoom"
.end annotation


# instance fields
.field private mAttentionNumber:Ljava/lang/String;

.field private mHeaderUrl:Ljava/lang/String;

.field private mLevel:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mRoomId:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->this$0:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "nn"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mNickName:Ljava/lang/String;

    .line 43
    const-string v0, "al"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mLevel:Ljava/lang/String;

    .line 44
    const-string v0, "headUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mHeaderUrl:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "rid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mRoomId:Ljava/lang/String;

    .line 46
    const-string v0, "an"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mAttentionNumber:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getAttentionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mAttentionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mHeaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;->mRoomId:Ljava/lang/String;

    return-object v0
.end method
