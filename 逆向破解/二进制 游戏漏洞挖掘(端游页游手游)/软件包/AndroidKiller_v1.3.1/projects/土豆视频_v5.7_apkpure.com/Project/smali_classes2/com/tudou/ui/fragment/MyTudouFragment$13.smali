.class Lcom/tudou/ui/fragment/MyTudouFragment$13;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1027
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$13;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$13;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$13;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1033
    :cond_0
    const v0, 0x7f0d00b1

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1040
    :goto_0
    return-void

    .line 1036
    :cond_1
    const-string v0, "\u7f13\u5b58\u9875\u7f13\u5b58\u5b8c\u6210\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5b8c\u6210\u5220\u9664\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$13;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2400(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    goto :goto_0
.end method
