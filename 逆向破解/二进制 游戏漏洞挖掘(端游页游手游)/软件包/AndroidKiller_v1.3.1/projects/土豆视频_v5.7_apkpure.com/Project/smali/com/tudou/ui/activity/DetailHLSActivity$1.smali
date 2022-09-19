.class Lcom/tudou/ui/activity/DetailHLSActivity$1;
.super Ljava/lang/Object;
.source "DetailHLSActivity.java"

# interfaces
.implements Lcom/youku/player/apiservice/IUserInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailHLSActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailHLSActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailHLSActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailHLSActivity$1;->this$0:Lcom/tudou/ui/activity/DetailHLSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    return-object v0
.end method

.method public getNumUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    return v0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    return v0
.end method
