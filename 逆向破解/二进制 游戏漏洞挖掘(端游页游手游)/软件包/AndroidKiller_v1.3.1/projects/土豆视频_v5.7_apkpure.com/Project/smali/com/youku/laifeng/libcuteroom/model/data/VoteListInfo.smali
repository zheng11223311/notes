.class public Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "VoteListInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    }
.end annotation


# static fields
.field private static final BODY_VOTE_ID:Ljava/lang/String; = "id"

.field private static final BODY_VOTE_IS_FREE:Ljava/lang/String; = "isFree"

.field private static final BODY_VOTE_OWNER:Ljava/lang/String; = "owner"

.field private static final BODY_VOTE_PRICE:Ljava/lang/String; = "price"

.field private static final BODY_VOTE_STATUS:Ljava/lang/String; = "status"

.field private static final BODY_VOTE_TEMPLATE:Ljava/lang/String; = "template"

.field private static final BODY_VOTE_TITLE:Ljava/lang/String; = "title"

.field private static final BODY_VOTE_TOTAL_NUM:Ljava/lang/String; = "totalNum"

.field private static final BODY_VOTE_VOTED:Ljava/lang/String; = "voted"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;",
            ">;"
        }
    .end annotation
.end field

.field private roomId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;->list:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    .local v4, "object":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-direct {v3}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;-><init>()V

    .line 41
    .local v3, "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setId(I)V

    .line 42
    const-string v5, "owner"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setOwner(I)V

    .line 43
    const-string/jumbo v5, "totalNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setTotalNum(I)V

    .line 44
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setTitle(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v5, "template"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setTemplate(I)V

    .line 46
    const-string v5, "isFree"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setIsFree(I)V

    .line 47
    const-string v5, "price"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setPrice(I)V

    .line 48
    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setStatus(I)V

    .line 49
    const-string/jumbo v5, "voted"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setVoted(Z)V

    .line 50
    const-string/jumbo v5, "show"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->setShow(Z)V

    .line 51
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo;->list:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;
    .end local v4    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method
