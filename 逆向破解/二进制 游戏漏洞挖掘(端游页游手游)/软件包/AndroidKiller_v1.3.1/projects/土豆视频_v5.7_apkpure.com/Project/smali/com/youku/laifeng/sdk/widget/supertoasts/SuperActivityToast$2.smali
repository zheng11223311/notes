.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$100(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->onClick(Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->dismiss()V

    .line 1529
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->access$200(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1531
    return-void
.end method
