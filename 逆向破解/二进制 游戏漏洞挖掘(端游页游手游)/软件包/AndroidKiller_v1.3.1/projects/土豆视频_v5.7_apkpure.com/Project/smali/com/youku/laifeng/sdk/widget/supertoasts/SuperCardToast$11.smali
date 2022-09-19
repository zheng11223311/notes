.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$600(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$600(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$700(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->onClick(Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->dismiss()V

    .line 2029
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$800(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2031
    return-void
.end method
