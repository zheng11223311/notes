.class public abstract Lcom/youku/gamecenter/services/GetOfflineDataService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetOfflineDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field protected mOfflienServiceListener:Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/youku/gamecenter/services/GetOfflineDataService$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetOfflineDataService$1;-><init>(Lcom/youku/gamecenter/services/GetOfflineDataService;)V

    iput-object v0, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->handler:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public loadStringFromTxt(Ljava/lang/String;Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;

    .prologue
    const/4 v2, 0x1

    .line 43
    iput-object p2, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->mOfflienServiceListener:Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;

    .line 44
    new-instance v0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/youku/gamecenter/services/TaskHandleOfflineData;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 45
    .local v0, "task":Lcom/youku/gamecenter/services/TaskHandleOfflineData;
    new-array v1, v2, [Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->handler:Landroid/os/Handler;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->execute([Ljava/lang/Object;)Lcom/youku/gamecenter/services/YoukuAsyncTask;

    .line 46
    return-void
.end method

.method public abstract onLoadOfflineDataFinish()V
.end method

.method public onSuccess()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public abstract parseOfflineData(Ljava/lang/String;)V
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method public saveStringToTxt(Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "saveData"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/services/TaskHandleOfflineData;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;)V

    .line 32
    .local v0, "task":Lcom/youku/gamecenter/services/TaskHandleOfflineData;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Handler;

    iget-object v3, p0, Lcom/youku/gamecenter/services/GetOfflineDataService;->handler:Landroid/os/Handler;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->execute([Ljava/lang/Object;)Lcom/youku/gamecenter/services/YoukuAsyncTask;

    .line 33
    return-void
.end method
