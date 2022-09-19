.class Lcom/tudou/adapter/DanmuPreviewAdapter$8;
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

.field final synthetic val$anim:Landroid/view/animation/Animation;

.field final synthetic val$animEnd:Landroid/view/animation/Animation;

.field final synthetic val$num:I

.field final synthetic val$tempFinal:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;Landroid/widget/TextView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$tempFinal:Landroid/widget/TextView;

    iput p3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$num:I

    iput-object p4, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$animEnd:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$anim:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 489
    iget-object v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$tempFinal:Landroid/widget/TextView;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$num:I

    if-nez v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$tempFinal:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$animEnd:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$tempFinal:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 494
    .local v0, "a":I
    iget-object v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$tempFinal:Landroid/widget/TextView;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "a":I
    .local v1, "a":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 495
    iget-object v2, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$tempFinal:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$8;->val$anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 484
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    return-void
.end method
