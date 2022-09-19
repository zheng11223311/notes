.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$2;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$OnDismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setSwipeToDismiss(Z)V
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
    .line 778
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->dismissImmediately()V

    .line 785
    return-void
.end method
