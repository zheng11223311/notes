.class final Lcom/tudou/ui/fragment/LoginFragment$11;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->updateCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 1113
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f4\u65b0coookie====\u5931\u8d25====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1108
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u66f4\u65b0coookie====\u6210\u529f====="

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void
.end method
