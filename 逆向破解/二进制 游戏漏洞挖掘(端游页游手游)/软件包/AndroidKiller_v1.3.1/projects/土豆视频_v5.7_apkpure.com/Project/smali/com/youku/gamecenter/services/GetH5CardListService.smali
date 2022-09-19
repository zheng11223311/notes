.class public Lcom/youku/gamecenter/services/GetH5CardListService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetH5CardListService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetH5CardListService$OnGetH5CardListListener;
    }
.end annotation


# instance fields
.field public gameH5CardListInfo:Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 75
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetH5CardListService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetH5CardListService$OnGetH5CardListListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetH5CardListService;->gameH5CardListInfo:Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetH5CardListService$OnGetH5CardListListener;->onSuccess(Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;)V

    .line 25
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetH5CardListService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 31
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 32
    const-string v5, "PlayFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": jsonObject is null! json name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 37
    const-string v5, "PlayFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": not has items!!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    new-instance v5, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;

    invoke-direct {v5}, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;-><init>()V

    iput-object v5, p0, Lcom/youku/gamecenter/services/GetH5CardListService;->gameH5CardListInfo:Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;

    .line 42
    iget-object v5, p0, Lcom/youku/gamecenter/services/GetH5CardListService;->gameH5CardListInfo:Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;

    const-string v6, "page_count"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcom/youku/gamecenter/services/GetH5CardListService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->pageCount:I

    .line 44
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 52
    .local v4, "object":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 50
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    :cond_3
    new-instance v2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;

    invoke-direct {v2}, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;-><init>()V

    .line 56
    .local v2, "info":Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;
    const-string v5, "image"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetH5CardListService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;->img:Ljava/lang/String;

    .line 57
    const-string/jumbo v5, "url"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetH5CardListService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;->url:Ljava/lang/String;

    .line 58
    const-string/jumbo v5, "title"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetH5CardListService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;->title:Ljava/lang/String;

    .line 59
    iget-object v5, p0, Lcom/youku/gamecenter/services/GetH5CardListService;->gameH5CardListInfo:Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->list:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
