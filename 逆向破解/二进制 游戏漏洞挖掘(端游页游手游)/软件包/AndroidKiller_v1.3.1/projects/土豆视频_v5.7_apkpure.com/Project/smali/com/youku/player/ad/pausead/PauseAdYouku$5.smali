.class Lcom/youku/player/ad/pausead/PauseAdYouku$5;
.super Ljava/lang/Object;
.source "PauseAdYouku.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdYouku;->creatSelectDownloadDialog(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

.field final synthetic val$downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdYouku;Lcom/youku/player/ui/widget/YpYoukuDialog;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iput-object p2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->val$downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdDismiss()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->val$downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 252
    return-void

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$500(Lcom/youku/player/ad/pausead/PauseAdYouku;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$5;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v2}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$600(Lcom/youku/player/ad/pausead/PauseAdYouku;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method
