.class Lcom/tudou/ui/fragment/SearchTudouFragment$2;
.super Ljava/lang/Object;
.source "SearchTudouFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchTudouFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 247
    .local v0, "heightDiff":I
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 248
    invoke-static {}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u663e\u793a\u5149\u6807"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, v1, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9690\u85cf\u5149\u6807"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, v1, Lcom/youku/widget/SearchHeadLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0
.end method
