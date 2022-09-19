.class Lcom/tudou/adapter/DanmuPreviewAdapter$6;
.super Ljava/lang/Object;
.source "DanmuPreviewAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;->beginDanmuCount(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

.field final synthetic val$tempFinal:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$6;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$6;->val$tempFinal:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$6;->val$tempFinal:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 438
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 433
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 429
    return-void
.end method
