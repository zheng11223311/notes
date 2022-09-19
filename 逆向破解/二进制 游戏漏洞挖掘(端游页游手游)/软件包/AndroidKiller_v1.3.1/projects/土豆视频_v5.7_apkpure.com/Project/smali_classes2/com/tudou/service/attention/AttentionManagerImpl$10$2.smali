.class Lcom/tudou/service/attention/AttentionManagerImpl$10$2;
.super Ljava/lang/Object;
.source "AttentionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/attention/AttentionManagerImpl$10;

.field final synthetic val$userlist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl$10;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;->this$1:Lcom/tudou/service/attention/AttentionManagerImpl$10;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;->val$userlist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 436
    iget-object v3, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;->val$userlist:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lcom/youku/http/TudouURLContainer;->getAddAttention(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 441
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;->val$userlist:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/http/TudouURLContainer;->getAttentionMapString(Ljava/util/ArrayList;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v6, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 446
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;

    invoke-direct {v3, p0}, Lcom/tudou/service/attention/AttentionManagerImpl$10$2$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$10$2;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 509
    return-void
.end method
