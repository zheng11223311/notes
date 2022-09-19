.class public Lcom/youku/gamecenter/services/TaskHandleOfflineData;
.super Lcom/youku/gamecenter/services/YoukuAsyncTask;
.source "TaskHandleOfflineData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youku/gamecenter/services/YoukuAsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOAD_OFFLINE_DATA:I = 0x1

.field public static final SAVE_OFFLINE_DATA:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mType:I

.field private onHandleSaveStringListener:Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mType"    # I
    .param p3, "mFileName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mType:I

    .line 40
    iput-object p3, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mFileName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mType"    # I
    .param p3, "mFileName"    # Ljava/lang/String;
    .param p4, "mData"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/youku/gamecenter/services/YoukuAsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mContext:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mType:I

    .line 32
    iput-object p3, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mFileName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mData:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->onHandleSaveStringListener:Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 4
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 46
    iget v0, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->onHandleSaveStringListener:Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->onHandleSaveStringListener:Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mData:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/youku/gamecenter/services/TaskHandleOfflineData$onHandleSaveStringListener;->onHandleSaveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mType:I

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/FileUtils;->loadOfflineDataFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mData:Ljava/lang/String;

    .line 54
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mType:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    iget-object v1, p0, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->mData:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/youku/gamecenter/services/YoukuAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/TaskHandleOfflineData;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method
