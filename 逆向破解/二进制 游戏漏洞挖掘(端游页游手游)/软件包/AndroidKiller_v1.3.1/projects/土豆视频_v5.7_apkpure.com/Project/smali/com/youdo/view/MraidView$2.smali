.class Lcom/youdo/view/MraidView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->forceRedrawByInvalidation()V
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

    iput-object p1, p0, Lcom/youdo/view/MraidView$2;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/youdo/view/MraidView$2;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->invalidate()V

    iget-object v0, p0, Lcom/youdo/view/MraidView$2;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$2;->this$0:Lcom/youdo/view/MraidView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Lcom/youdo/view/MraidView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
