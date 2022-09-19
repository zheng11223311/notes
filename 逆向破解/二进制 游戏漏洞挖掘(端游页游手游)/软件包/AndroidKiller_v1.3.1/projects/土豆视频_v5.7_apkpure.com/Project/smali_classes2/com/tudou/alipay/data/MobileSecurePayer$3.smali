.class Lcom/tudou/alipay/data/MobileSecurePayer$3;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.source "MobileSecurePayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/data/MobileSecurePayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/MobileSecurePayer;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/MobileSecurePayer;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tudou/alipay/data/MobileSecurePayer$3;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isHideLoadingScreen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    const-string v0, "MobileSecurePayer"

    const-string v1, "IRemoteServiceCallback......isHideLoadingScreen()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public payEnd(ZLjava/lang/String;)V
    .locals 3
    .param p1, "flag"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    const-string v0, "MobileSecurePayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IRemoteServiceCallback......payEnd:.....flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "iCallingPid"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v2, "MobileSecurePayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IRemoteServiceCallback......startActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",iCallingPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isCancel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$3;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v4}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer$3;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v2}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer$3;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v2}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$300(Lcom/tudou/alipay/data/MobileSecurePayer;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    if-nez p4, :cond_2

    .line 207
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "bundle":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 211
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :cond_2
    :try_start_0
    const-string v2, "CallingPid"

    invoke-virtual {p4, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer$3;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v2}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$300(Lcom/tudou/alipay/data/MobileSecurePayer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
