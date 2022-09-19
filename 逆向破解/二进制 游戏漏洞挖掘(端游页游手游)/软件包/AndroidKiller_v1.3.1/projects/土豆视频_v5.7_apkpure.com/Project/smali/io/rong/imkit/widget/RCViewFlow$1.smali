.class Lio/rong/imkit/widget/RCViewFlow$1;
.super Ljava/lang/Object;
.source "RCViewFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RCViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/RCViewFlow;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/RCViewFlow;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lio/rong/imkit/widget/RCViewFlow$1;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow$1;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v0}, Lio/rong/imkit/widget/RCViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow$1;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v1}, Lio/rong/imkit/widget/RCViewFlow;->access$000(Lio/rong/imkit/widget/RCViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    iget-object v0, p0, Lio/rong/imkit/widget/RCViewFlow$1;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    iget-object v1, p0, Lio/rong/imkit/widget/RCViewFlow$1;->this$0:Lio/rong/imkit/widget/RCViewFlow;

    invoke-static {v1}, Lio/rong/imkit/widget/RCViewFlow;->access$100(Lio/rong/imkit/widget/RCViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/RCViewFlow;->setSelection(I)V

    .line 87
    return-void
.end method
