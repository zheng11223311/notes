.class Lcn/domob/android/ads/AdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/view/animation/AnimationSet;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcn/domob/android/ads/g;

.field final synthetic d:Lcn/domob/android/ads/AdView;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/AdView;[Landroid/view/animation/AnimationSet;Landroid/view/View;Lcn/domob/android/ads/g;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iput-object p2, p0, Lcn/domob/android/ads/AdView$1;->a:[Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcn/domob/android/ads/AdView$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcn/domob/android/ads/AdView$1;->c:Lcn/domob/android/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 319
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 320
    invoke-static {}, Lcn/domob/android/ads/AdView;->l()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is not null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget v1, v1, Lcn/domob/android/ads/AdView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget v1, v1, Lcn/domob/android/ads/AdView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->a:[Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_4

    .line 329
    invoke-static {}, Lcn/domob/android/ads/AdView;->l()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Show ad with animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->a:[Landroid/view/animation/AnimationSet;

    aget-object v0, v0, v5

    .line 332
    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->a:[Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 333
    iget-object v2, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v2, v2, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/m;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 334
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/m;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 342
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/m;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->b:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget v3, v3, Lcn/domob/android/ads/AdView;->i:I

    iget-object v4, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget v4, v4, Lcn/domob/android/ads/AdView;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-boolean v0, v0, Lcn/domob/android/ads/AdView;->k:Z

    if-eqz v0, :cond_5

    .line 348
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iput-boolean v5, v0, Lcn/domob/android/ads/AdView;->k:Z

    .line 354
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/h;

    if-eqz v0, :cond_6

    .line 356
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/h;

    .line 357
    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v1, v1, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/m;->removeView(Landroid/view/View;)V

    .line 358
    invoke-virtual {v0}, Lcn/domob/android/ads/h;->destroy()V

    .line 367
    :cond_0
    :goto_3
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/AdView;->b(Lcn/domob/android/ads/g;)V

    .line 369
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/b;->a(J)V

    .line 372
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->n:Lcn/domob/android/ads/AdListener;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->n:Lcn/domob/android/ads/AdListener;

    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdListener;->onReceivedFreshAd(Lcn/domob/android/ads/AdView;)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->o:Lcn/domob/android/ads/AdEventListener;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->o:Lcn/domob/android/ads/AdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdEventListener;->onAdReturned(Lcn/domob/android/ads/AdView;)V

    .line 379
    :cond_2
    return-void

    .line 324
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/AdView;->l()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget v2, v2, Lcn/domob/android/ads/AdView;->i:I

    iget-object v3, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget v3, v3, Lcn/domob/android/ads/AdView;->j:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 336
    :cond_4
    invoke-static {}, Lcn/domob/android/ads/AdView;->l()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Show ad without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/m;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/m;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 350
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->showNext()V

    goto/16 :goto_2

    .line 362
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/AdView$1;->d:Lcn/domob/android/ads/AdView;

    iget-object v0, v0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/m;->removeViewAt(I)V

    goto :goto_3
.end method
