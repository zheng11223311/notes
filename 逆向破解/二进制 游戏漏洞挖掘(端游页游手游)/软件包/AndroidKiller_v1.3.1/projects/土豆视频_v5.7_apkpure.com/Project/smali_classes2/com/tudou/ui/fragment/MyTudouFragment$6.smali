.class Lcom/tudou/ui/fragment/MyTudouFragment$6;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->initHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$6;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 486
    const-string v1, "TAG_TUDOU"

    const-string v2, "onGlobalLayout"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$6;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1300(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    .line 488
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$6;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->postInvalidate()V

    .line 489
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$6;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 491
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 492
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
