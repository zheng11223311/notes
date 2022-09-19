.class Lcom/tudou/guide/SplashSubManager$1;
.super Ljava/lang/Object;
.source "SplashSubManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashSubManager;->getSubData(Lcom/tudou/guide/SplashSubManager$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/SplashSubManager;

.field final synthetic val$callback:Lcom/tudou/guide/SplashSubManager$CallBack;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashSubManager;Lcom/tudou/guide/SplashSubManager$CallBack;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    iput-object p2, p0, Lcom/tudou/guide/SplashSubManager$1;->val$callback:Lcom/tudou/guide/SplashSubManager$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 94
    const-string v0, "Splash_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failReason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-static {v0, v3}, Lcom/tudou/guide/SplashSubManager;->access$002(Lcom/tudou/guide/SplashSubManager;Lcom/youku/vo/GuideSub;)Lcom/youku/vo/GuideSub;

    .line 96
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v0, v3}, Lcom/tudou/guide/SplashSubManager;->setResults(Ljava/util/ArrayList;)V

    .line 97
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager$1;->val$callback:Lcom/tudou/guide/SplashSubManager$CallBack;

    invoke-interface {v0, p1}, Lcom/tudou/guide/SplashSubManager$CallBack;->onFail(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "str":Ljava/lang/String;
    const-string v1, "Splash_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    const-class v1, Lcom/youku/vo/GuideSub;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GuideSub;

    invoke-static {v2, v1}, Lcom/tudou/guide/SplashSubManager;->access$002(Lcom/tudou/guide/SplashSubManager;Lcom/youku/vo/GuideSub;)Lcom/youku/vo/GuideSub;

    .line 88
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-static {v2}, Lcom/tudou/guide/SplashSubManager;->access$000(Lcom/tudou/guide/SplashSubManager;)Lcom/youku/vo/GuideSub;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/GuideSub;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/tudou/guide/SplashSubManager;->setResults(Ljava/util/ArrayList;)V

    .line 89
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$1;->val$callback:Lcom/tudou/guide/SplashSubManager$CallBack;

    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$1;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-static {v2}, Lcom/tudou/guide/SplashSubManager;->access$000(Lcom/tudou/guide/SplashSubManager;)Lcom/youku/vo/GuideSub;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/GuideSub;->result:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/tudou/guide/SplashSubManager$CallBack;->onSucess(Ljava/util/ArrayList;)V

    .line 90
    return-void
.end method
