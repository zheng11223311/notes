.class Lcom/tudou/adapter/SubscribeAdapter$3$1;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Lcom/youku/util/IAlert;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/SubscribeAdapter$3;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$3;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 8
    .param p1, "tag"    # I

    .prologue
    .line 308
    const-string v0, "\u5c06\u5728\u79fb\u52a8\u7f51\u7edc\u81ea\u52a8\u5f00\u59cb\u7f13\u5b58"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemTitle:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeAdapter$3;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/SubscribeAdapter;->access$500(Lcom/tudou/adapter/SubscribeAdapter;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/tudou/adapter/SubscribeAdapter$3$1$2;

    invoke-direct {v7, p0}, Lcom/tudou/adapter/SubscribeAdapter$3$1$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter$3$1;)V

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 333
    return-void
.end method

.method public alertPositive(I)V
    .locals 8
    .param p1, "tag"    # I

    .prologue
    .line 276
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v1, v1, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemTitle:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v4, v4, Lcom/tudou/adapter/SubscribeAdapter$3;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/SubscribeAdapter;->access$500(Lcom/tudou/adapter/SubscribeAdapter;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;

    invoke-direct {v7, p0}, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter$3$1;)V

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    .line 300
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setCanUse3GDownload(Z)V

    .line 303
    const-string v0, "\u5f53\u524d\u4e3a\u79fb\u52a8\u7f51\u7edc\uff0c\u8bf7\u5173\u6ce8\u6d41\u91cf"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 304
    return-void
.end method
