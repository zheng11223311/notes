.class public Lcom/youku/gamecenter/player/GameVideoTopView;
.super Landroid/widget/LinearLayout;
.source "GameVideoTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;,
        Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameVideoTopView"


# instance fields
.field mBackLayout:Landroid/view/View;

.field mOnBackButtonClickListener:Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->init()V

    .line 34
    return-void
.end method

.method private handleBackClick()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "GameVideoTopView"

    const-string v1, "click back"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mOnBackButtonClickListener:Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mOnBackButtonClickListener:Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;->handleBackClick()V

    .line 147
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->getLayout()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/youku/gamecenter/R$id;->game_video_back_btn_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mBackLayout:Landroid/view/View;

    .line 43
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mBackLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v1, Lcom/youku/gamecenter/R$id;->game_video_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mTitle:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public static pluginTopHide(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 110
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 111
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 112
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 113
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 114
    new-instance v1, Lcom/youku/gamecenter/player/GameVideoTopView$4;

    invoke-direct {v1, p1, p0}, Lcom/youku/gamecenter/player/GameVideoTopView$4;-><init>(Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginTopShow(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 83
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 84
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 85
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 86
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 87
    new-instance v1, Lcom/youku/gamecenter/player/GameVideoTopView$3;

    invoke-direct {v1, p1, p0}, Lcom/youku/gamecenter/player/GameVideoTopView$3;-><init>(Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_video_top_view:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoTopView$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoTopView$2;-><init>(Lcom/youku/gamecenter/player/GameVideoTopView;)V

    invoke-static {p0, v0}, Lcom/youku/gamecenter/player/GameVideoTopView;->pluginTopHide(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;)V

    .line 79
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mBackLayout:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->handleBackClick()V

    .line 140
    :cond_0
    return-void
.end method

.method public setOnBackButtonClickListener(Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mOnBackButtonClickListener:Lcom/youku/gamecenter/player/GameVideoTopView$OnBackButtonClickListener;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoTopView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/player/GameVideoTopView;->setVisibility(I)V

    .line 62
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoTopView$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoTopView$1;-><init>(Lcom/youku/gamecenter/player/GameVideoTopView;)V

    invoke-static {p0, v0}, Lcom/youku/gamecenter/player/GameVideoTopView;->pluginTopShow(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;)V

    .line 68
    :cond_0
    return-void
.end method
