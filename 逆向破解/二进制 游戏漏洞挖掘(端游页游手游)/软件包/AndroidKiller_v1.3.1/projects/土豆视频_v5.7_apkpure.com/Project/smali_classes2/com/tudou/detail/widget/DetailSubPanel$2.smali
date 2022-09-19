.class Lcom/tudou/detail/widget/DetailSubPanel$2;
.super Ljava/lang/Object;
.source "DetailSubPanel.java"

# interfaces
.implements Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/DetailSubPanel;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailSubPanel;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailSubPanel$2;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCommentComplete(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel$2;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-static {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->access$100(Lcom/tudou/detail/widget/DetailSubPanel;)Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel$2;->this$0:Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-static {v0}, Lcom/tudou/detail/widget/DetailSubPanel;->access$100(Lcom/tudou/detail/widget/DetailSubPanel;)Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;->onSendCommentComplete(ZLjava/lang/String;)Z

    .line 156
    :cond_0
    return-void
.end method
