.class Lio/rong/imkit/widget/AutoGridLayout$1;
.super Ljava/lang/Object;
.source "AutoGridLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/AutoGridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/AutoGridLayout;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/AutoGridLayout;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/rong/imkit/widget/AutoGridLayout$1;->this$0:Lio/rong/imkit/widget/AutoGridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lio/rong/imkit/widget/AutoGridLayout$1;->this$0:Lio/rong/imkit/widget/AutoGridLayout;

    invoke-virtual {v0}, Lio/rong/imkit/widget/AutoGridLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/AutoGridLayout$1;->this$0:Lio/rong/imkit/widget/AutoGridLayout;

    invoke-static {v1}, Lio/rong/imkit/widget/AutoGridLayout;->access$000(Lio/rong/imkit/widget/AutoGridLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 38
    :goto_0
    iget-object v0, p0, Lio/rong/imkit/widget/AutoGridLayout$1;->this$0:Lio/rong/imkit/widget/AutoGridLayout;

    invoke-virtual {v0}, Lio/rong/imkit/widget/AutoGridLayout;->invalidate()V

    .line 39
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/AutoGridLayout$1;->this$0:Lio/rong/imkit/widget/AutoGridLayout;

    invoke-virtual {v0}, Lio/rong/imkit/widget/AutoGridLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/AutoGridLayout$1;->this$0:Lio/rong/imkit/widget/AutoGridLayout;

    invoke-static {v1}, Lio/rong/imkit/widget/AutoGridLayout;->access$000(Lio/rong/imkit/widget/AutoGridLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
