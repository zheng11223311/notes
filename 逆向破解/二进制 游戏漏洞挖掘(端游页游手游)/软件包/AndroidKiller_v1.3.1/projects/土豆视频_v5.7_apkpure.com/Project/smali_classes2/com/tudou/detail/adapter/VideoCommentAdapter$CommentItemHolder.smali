.class public Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
.super Ljava/lang/Object;
.source "VideoCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/VideoCommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentItemHolder"
.end annotation


# instance fields
.field public animText:Landroid/widget/TextView;

.field public comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

.field public content:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public digIcon:Landroid/widget/ImageView;

.field public digNum:Landroid/widget/TextView;

.field public divider:Landroid/view/View;

.field public from:Landroid/widget/ImageView;

.field public mPic:Landroid/widget/ImageView;

.field public root:Landroid/view/View;

.field final synthetic this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

.field title:Landroid/widget/TextView;

.field public userName:Landroid/widget/TextView;

.field public userPic:Landroid/widget/ImageView;

.field public vUserMark:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter;Landroid/view/View;I)V
    .locals 1
    .param p2, "root"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 344
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->this$0:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->root:Landroid/view/View;

    .line 346
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 347
    const v0, 0x7f0c03a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userPic:Landroid/widget/ImageView;

    .line 348
    const v0, 0x7f0c03a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->vUserMark:Landroid/widget/ImageView;

    .line 349
    const v0, 0x7f0c03a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    .line 350
    const v0, 0x7f0c03a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->from:Landroid/widget/ImageView;

    .line 351
    const v0, 0x7f0c03a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userName:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f0c03aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->date:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f0c03ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->content:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f0c03a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digNum:Landroid/widget/TextView;

    .line 355
    const v0, 0x7f0c03ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->divider:Landroid/view/View;

    .line 356
    const v0, 0x7f0c03a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->animText:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f0c03ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    .line 361
    .end local p2    # "root":Landroid/view/View;
    :goto_0
    return-void

    .line 359
    .restart local p2    # "root":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "root":Landroid/view/View;
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->title:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public clear(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 327
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    const v1, 0x7f0201a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->userName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->date:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->content:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->divider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->mPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showDiggedAnim()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    iget-object v3, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->animText:Landroid/widget/TextView;

    const-string v4, "+1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 367
    .local v0, "tran":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 368
    new-instance v1, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder$1;-><init>(Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    iget-object v1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->animText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 384
    return-void
.end method
