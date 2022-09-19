.class Lcom/tudou/detail/widget/VideoCommentBar$5;
.super Ljava/lang/Object;
.source "VideoCommentBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoCommentBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoCommentBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCommentBar;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar$5;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    const-string v0, "onSubPageExpand"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar$5;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoCommentBar;->showAddComment()V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar$5;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto :goto_0
.end method
