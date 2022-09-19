.class Lcom/tudou/ui/fragment/CachingFolderFragment$7;
.super Ljava/lang/Object;
.source "CachingFolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFolderFragment;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    const-string v0, "onclick"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u7f13\u5b58\u89c6\u9891?"

    const-string v2, "\u5141\u8bb8"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/tudou/ui/fragment/CachingFolderFragment$7$1;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/CachingFolderFragment$7$1;-><init>(Lcom/tudou/ui/fragment/CachingFolderFragment$7;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    .line 416
    :goto_0
    const-string v0, "\u7f13\u5b58\u9875\u5267\u96c6\u89c6\u9891\u9875\u9762\u7f13\u5b58\u66f4\u591a\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u9875\u5267\u96c6-\u7f13\u5b58\u66f4\u591a"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CachingFolderFragment$7;->this$0:Lcom/tudou/ui/fragment/CachingFolderFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->access$800(Lcom/tudou/ui/fragment/CachingFolderFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFolderFragment;->excuegetVideoDetail(Ljava/lang/String;)V

    goto :goto_0
.end method
