.class public Lcom/tudou/videoshare/SinaShare$AuthListener;
.super Ljava/lang/Object;
.source "SinaShare.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/videoshare/SinaShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthListener"
.end annotation


# instance fields
.field private mCallBack:Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

.field final synthetic this$0:Lcom/tudou/videoshare/SinaShare;


# direct methods
.method public constructor <init>(Lcom/tudou/videoshare/SinaShare;Lcom/tudou/videoshare/SinaShare$IAuthCallBack;)V
    .locals 0
    .param p2, "aCallBack"    # Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->this$0:Lcom/tudou/videoshare/SinaShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->mCallBack:Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    .line 89
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f0d047b

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 125
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->mCallBack:Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    invoke-interface {v0}, Lcom/tudou/videoshare/SinaShare$IAuthCallBack;->onCancel()V

    .line 126
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u53d6\u6d88\u6388\u6743"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 94
    iget-object v3, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->this$0:Lcom/tudou/videoshare/SinaShare;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/videoshare/SinaShare;->access$002(Lcom/tudou/videoshare/SinaShare;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 96
    iget-object v3, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->this$0:Lcom/tudou/videoshare/SinaShare;

    invoke-static {v3}, Lcom/tudou/videoshare/SinaShare;->access$000(Lcom/tudou/videoshare/SinaShare;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "phoneNum":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->this$0:Lcom/tudou/videoshare/SinaShare;

    invoke-static {v3}, Lcom/tudou/videoshare/SinaShare;->access$000(Lcom/tudou/videoshare/SinaShare;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->this$0:Lcom/tudou/videoshare/SinaShare;

    invoke-static {v3}, Lcom/tudou/videoshare/SinaShare;->access$000(Lcom/tudou/videoshare/SinaShare;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v3

    invoke-static {v3}, Lcom/tudou/videoshare/AccessTokenKeeper;->writeAccessToken(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 103
    iget-object v3, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->mCallBack:Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    invoke-interface {v3, p1}, Lcom/tudou/videoshare/SinaShare$IAuthCallBack;->onSucess(Landroid/os/Bundle;)V

    .line 104
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6388\u6743\u6210\u529f=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->this$0:Lcom/tudou/videoshare/SinaShare;

    invoke-static {v5}, Lcom/tudou/videoshare/SinaShare;->access$000(Lcom/tudou/videoshare/SinaShare;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v3, "code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "code":Ljava/lang/String;
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v4, 0x7f0d047c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nObtained the code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->mCallBack:Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    invoke-interface {v3}, Lcom/tudou/videoshare/SinaShare$IAuthCallBack;->onFailed()V

    .line 118
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6388\u6743\u5931\u8d25=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare$AuthListener;->mCallBack:Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    invoke-interface {v0}, Lcom/tudou/videoshare/SinaShare$IAuthCallBack;->onFailed()V

    .line 132
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6388\u6743\u5f02\u5e38=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
