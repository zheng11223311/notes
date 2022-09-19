.class Lcom/corncop/leo/ViewFlow$1;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/leo/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corncop/leo/ViewFlow;


# direct methods
.method constructor <init>(Lcom/corncop/leo/ViewFlow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/corncop/leo/ViewFlow$1;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow$1;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v0}, Lcom/corncop/leo/ViewFlow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow$1;->this$0:Lcom/corncop/leo/ViewFlow;

    .line 92
    invoke-static {v1}, Lcom/corncop/leo/ViewFlow;->access$000(Lcom/corncop/leo/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    iget-object v0, p0, Lcom/corncop/leo/ViewFlow$1;->this$0:Lcom/corncop/leo/ViewFlow;

    iget-object v1, p0, Lcom/corncop/leo/ViewFlow$1;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v1}, Lcom/corncop/leo/ViewFlow;->access$100(Lcom/corncop/leo/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/corncop/leo/ViewFlow;->setSelection(I)V

    .line 94
    return-void
.end method
