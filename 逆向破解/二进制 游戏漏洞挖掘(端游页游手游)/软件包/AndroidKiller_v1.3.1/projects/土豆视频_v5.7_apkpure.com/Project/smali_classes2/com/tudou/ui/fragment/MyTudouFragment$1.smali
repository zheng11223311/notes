.class Lcom/tudou/ui/fragment/MyTudouFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MyTudouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1, v4}, Lcom/tudou/ui/fragment/MyTudouFragment;->refresh(Z)V

    .line 222
    :cond_1
    return-void

    .line 205
    :cond_2
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const-string v2, "IDownload.ACTION_DOWNLOAD_FINISH"

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$000(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const-string v2, "\u5168\u9009"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_3
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const-string v2, "IDownload.ACTION_DOWNLOAD_NEED_REFRESH"

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$000(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_4
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const-string v2, "IDownload.ACTION_DOWNLOAD_SDCRAD"

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$000(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setEdit(ZLandroid/view/View;)V

    goto :goto_0

    .line 217
    :cond_5
    const-string v1, "com.tudou.service.download.ACTION_SDCARD_PATH_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
