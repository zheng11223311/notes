.class Lcom/youdo/view/MraidView$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/controller/util/MraidPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->playVideoImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$11;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/youdo/view/MraidView$11;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$11;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, v2}, Lcom/youdo/view/MraidView;->setVisibility(I)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$11;->this$0:Lcom/youdo/view/MraidView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youdo/view/MraidView;->access$402(Lcom/youdo/view/MraidView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public onError()V
    .locals 0

    invoke-virtual {p0}, Lcom/youdo/view/MraidView$11;->onComplete()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method
