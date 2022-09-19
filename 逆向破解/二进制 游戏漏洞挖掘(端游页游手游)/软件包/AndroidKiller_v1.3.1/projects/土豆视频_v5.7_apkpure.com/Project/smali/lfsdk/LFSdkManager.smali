.class public Llfsdk/LFSdkManager;
.super Ljava/lang/Object;
.source "LFSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llfsdk/LFSdkManager$LFSdkCallBack;
    }
.end annotation


# static fields
.field public static mCB:Llfsdk/LFSdkManager$LFSdkCallBack;

.field public static mHasEntered:Z

.field private static mInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Llfsdk/LFSdkManager;->mInited:Z

    .line 20
    sput-boolean v0, Llfsdk/LFSdkManager;->mHasEntered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roomid"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "CPS"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    sget-boolean v2, Llfsdk/LFSdkManager;->mHasEntered:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 111
    sget-object v2, Llfsdk/LFSdkManager;->mCB:Llfsdk/LFSdkManager$LFSdkCallBack;

    if-nez v2, :cond_1

    .line 112
    sput-boolean v1, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 113
    const-string v2, "LFSdk-enterLaifengRoom"

    const-string v3, "please call LFSdkManager.setCallBack before me!(look at LFSdkManager class file)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    const-string/jumbo v2, "\u8fdb\u5165\u6765\u75af\u9891\u9053"

    invoke-static {p0, v2, v1, v1}, Lcom/corncop/pegasus/WaitingProgressDialog;->show(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "bres":Z
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    .line 122
    sput-boolean v1, Llfsdk/LFSdkManager;->mHasEntered:Z

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/LaifengSDKApplication;->getEnterRoomApi()Lcom/youku/api/EventDoApi;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p0, p3}, Lcom/youku/api/EventDoApi;->EnterLiveRoom(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getH5Tail(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v2, ""

    .line 137
    .local v2, "uid":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    const-string v2, "0"

    .line 142
    :goto_0
    const-string v0, "?"

    .line 144
    .local v0, "andWord":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "clientInfo=2003|1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/LaifengToken;->getLaifengToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "info":Ljava/lang/String;
    return-object v1

    .line 140
    .end local v0    # "andWord":Ljava/lang/String;
    .end local v1    # "info":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;Z)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "forbiddenLFSDKImageLoader"    # Z

    .prologue
    .line 57
    sget-boolean v0, Llfsdk/LFSdkManager;->mInited:Z

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/youku/LaifengSDKApplication;

    invoke-direct {v0, p0, p1}, Lcom/youku/LaifengSDKApplication;-><init>(Landroid/app/Application;Z)V

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Llfsdk/LFSdkManager;->mInited:Z

    .line 61
    :cond_0
    return-void
.end method

.method public static setCallBack(Llfsdk/LFSdkManager$LFSdkCallBack;)V
    .locals 2
    .param p0, "cb"    # Llfsdk/LFSdkManager$LFSdkCallBack;

    .prologue
    .line 84
    sget-boolean v0, Llfsdk/LFSdkManager;->mInited:Z

    if-nez v0, :cond_0

    .line 86
    const-string v0, "LFSdk-setCallBack"

    const-string v1, "please call LFSdkManager.init before me!(look at LFSdkManager class file)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    if-nez p0, :cond_1

    .line 90
    const-string v0, "LFSdk-setCallBack"

    const-string/jumbo v1, "setCallBack param is null, please check setCallBack call!(look at LFSdkManager class file)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    sput-object p0, Llfsdk/LFSdkManager;->mCB:Llfsdk/LFSdkManager$LFSdkCallBack;

    goto :goto_0
.end method

.method public static setOpenSilentDownload(Z)V
    .locals 1
    .param p0, "isOpen"    # Z

    .prologue
    .line 73
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/LaifengSDKApplication;->setOpenSilentDownload(Z)V

    .line 74
    return-void
.end method
