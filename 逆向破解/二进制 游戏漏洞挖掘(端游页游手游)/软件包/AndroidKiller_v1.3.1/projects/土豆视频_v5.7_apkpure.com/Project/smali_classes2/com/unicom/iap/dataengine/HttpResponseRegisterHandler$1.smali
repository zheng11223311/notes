.class Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;
.super Ljava/lang/Object;
.source "HttpResponseRegisterHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

.field private final synthetic val$response_string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->this$0:Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

    iput-object p2, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->val$response_string:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 43
    iget-object v3, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->val$response_string:Ljava/lang/String;

    const-class v4, Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/unicom/iap/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 45
    .local v2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "SYS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FLAG  success reponseMap="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->val$response_string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-nez v2, :cond_1

    .line 48
    iget-object v3, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->this$0:Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

    invoke-static {v3}, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;->access$0(Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;)Lcom/unicom/iap/dataengine/ServerCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->this$0:Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

    invoke-static {v3}, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;->access$0(Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;)Lcom/unicom/iap/dataengine/ServerCallback;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "1000"

    const-string v6, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25!"

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/unicom/iap/dataengine/ServerCallback;->serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v3, "resultcode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "code":Ljava/lang/String;
    const-string v3, "errorinfo"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "desc":Ljava/lang/String;
    iget-object v3, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->this$0:Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

    invoke-static {v3}, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;->access$0(Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;)Lcom/unicom/iap/dataengine/ServerCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler$1;->this$0:Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;

    invoke-static {v3}, Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;->access$0(Lcom/unicom/iap/dataengine/HttpResponseRegisterHandler;)Lcom/unicom/iap/dataengine/ServerCallback;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/unicom/iap/dataengine/ServerCallback;->serverCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
