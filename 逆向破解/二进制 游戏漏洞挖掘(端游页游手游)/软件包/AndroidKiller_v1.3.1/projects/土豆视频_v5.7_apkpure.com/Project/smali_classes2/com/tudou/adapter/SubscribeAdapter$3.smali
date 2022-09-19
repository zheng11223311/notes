.class Lcom/tudou/adapter/SubscribeAdapter$3;
.super Ljava/lang/Object;
.source "SubscribeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/SubscribeAdapter;

.field final synthetic val$img_cache:Landroid/widget/ImageView;

.field final synthetic val$itemCode:Ljava/lang/String;

.field final synthetic val$itemTitle:Ljava/lang/String;

.field final synthetic val$playLink:Ljava/lang/String;

.field final synthetic val$txt_cache:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$playLink:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$txt_cache:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$img_cache:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v0, "t1.subscribe_ssubscribe.download"

    invoke-static {v0, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 252
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$playLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string v0, "\u89c6\u9891\u64ad\u653e\u5730\u5740\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string v0, "subscribe_cache"

    const-wide/16 v4, 0x320

    invoke-static {v0, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8ba2\u9605tab\u7f13\u5b58\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$100(Lcom/tudou/adapter/SubscribeAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u7f13\u5b58\u89c6\u9891\uff1f"

    const-string v2, "\u5141\u8bb8"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/tudou/adapter/SubscribeAdapter$3$1;

    invoke-direct {v4, p0}, Lcom/tudou/adapter/SubscribeAdapter$3$1;-><init>(Lcom/tudou/adapter/SubscribeAdapter$3;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    goto :goto_0

    .line 336
    :cond_3
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemTitle:Ljava/lang/String;

    const-string v2, ""

    iget-object v4, p0, Lcom/tudou/adapter/SubscribeAdapter$3;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/SubscribeAdapter;->access$500(Lcom/tudou/adapter/SubscribeAdapter;)I

    move-result v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Lcom/tudou/adapter/SubscribeAdapter$3$2;

    invoke-direct {v7, p0}, Lcom/tudou/adapter/SubscribeAdapter$3$2;-><init>(Lcom/tudou/adapter/SubscribeAdapter$3;)V

    invoke-static/range {v0 .. v7}, Lcom/tudou/service/download/DownloadManager;->startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$FromType;ILjava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/OnPreparedCallback;)V

    goto :goto_0
.end method
