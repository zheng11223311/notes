.class Lcom/tudou/videoshare/WBShareActivity$2;
.super Ljava/lang/Object;
.source "WBShareActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/WBShareActivity;->sendMultiMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/videoshare/WBShareActivity;


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/WBShareActivity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tudou/videoshare/WBShareActivity$2;->this$0:Lcom/tudou/videoshare/WBShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u5206\u4eab\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity$2;->this$0:Lcom/tudou/videoshare/WBShareActivity;

    invoke-virtual {v0}, Lcom/tudou/videoshare/WBShareActivity;->finish()V

    .line 303
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    .line 295
    .local v0, "newToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    invoke-static {v0}, Lcom/tudou/videoshare/AccessTokenKeeper;->writeAccessToken(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 296
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5206\u4eab\u6388\u6743\u6210\u529f=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 287
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5206\u4eab\u6388\u6743\u5f02\u5e38=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/tudou/videoshare/WBShareActivity$2;->this$0:Lcom/tudou/videoshare/WBShareActivity;

    invoke-virtual {v0}, Lcom/tudou/videoshare/WBShareActivity;->finish()V

    .line 289
    return-void
.end method
