.class public Lcom/youku/gamecenter/services/GetHomePageService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetHomePageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetHomePageService$OnHomePageServiceListener;
    }
.end annotation


# static fields
.field public static HOME_PAGE_OFFLINE_DATA_FILE_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "home_page_offline_data.txt"

    sput-object v0, Lcom/youku/gamecenter/services/GetHomePageService;->HOME_PAGE_OFFLINE_DATA_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetHomePageService;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 46
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetHomePageService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetHomePageService$OnHomePageServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetHomePageService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/HomePageInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetHomePageService$OnHomePageServiceListener;->onSuccess(Lcom/youku/gamecenter/data/HomePageInfo;)V

    .line 54
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetHomePageService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 28
    const-string v2, "PlayFlow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": jsonObject is null! json name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/services/GetHomePageService;->getHomePageInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/HomePageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/gamecenter/services/GetHomePageService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    .line 34
    new-instance v1, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;

    iget-object v2, p0, Lcom/youku/gamecenter/services/GetHomePageService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;-><init>(Landroid/content/Context;)V

    .line 35
    .local v1, "service":Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;
    sget-object v2, Lcom/youku/gamecenter/services/GetHomePageService;->HOME_PAGE_OFFLINE_DATA_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->saveStringToTxt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
