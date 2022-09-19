.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "BeanRecommendRoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;
    }
.end annotation


# static fields
.field public static final ACTOR_ATTENTION:Ljava/lang/String; = "an"

.field public static final ACTOR_HEADER_URL:Ljava/lang/String; = "headUrl"

.field public static final ACTOR_LEVEL:Ljava/lang/String; = "al"

.field public static final ACTOR_NICK_NAME:Ljava/lang/String; = "nn"

.field public static final ACTOR_ROOM_ID:Ljava/lang/String; = "rid"

.field public static final ROOT:Ljava/lang/String; = "response"

.field public static final ROOT_CODE:Ljava/lang/String; = "code"

.field public static final ROOT_DATA:Ljava/lang/String; = "data"

.field public static final ROOT_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field public recommendRoomList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->recommendRoomList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public getRecommendRoomList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->recommendRoomList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 8
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, "response":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->recommendRoomList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 75
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    :goto_0
    if-eqz v3, :cond_0

    .line 80
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 81
    .local v4, "roomArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 83
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 84
    .local v5, "roomObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;

    invoke-direct {v2, p0, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;-><init>(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;Lorg/json/JSONObject;)V

    .line 85
    .local v2, "item":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom;->recommendRoomList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v2    # "item":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRecommendRoom$RecommendRoom;
    .end local v5    # "roomObject":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "i":I
    .end local v4    # "roomArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v4    # "roomArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 87
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v4    # "roomArray":Lorg/json/JSONArray;
    :cond_0
    return-void
.end method
