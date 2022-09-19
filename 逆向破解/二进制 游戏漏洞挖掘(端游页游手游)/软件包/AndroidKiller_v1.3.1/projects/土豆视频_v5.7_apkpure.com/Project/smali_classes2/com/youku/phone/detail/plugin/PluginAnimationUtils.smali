.class public final Lcom/youku/phone/detail/plugin/PluginAnimationUtils;
.super Ljava/lang/Object;
.source "PluginAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;
    }
.end annotation


# static fields
.field private static final duration:I = 0x12c


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static pluginBottomHide(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 131
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 132
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 133
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 134
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$5;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginBottomShow(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 157
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 158
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 159
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 160
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 161
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$6;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$6;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginLeftHide(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 76
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 77
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 78
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 79
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 80
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$3;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$3;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginLeftShow(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 103
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 104
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 105
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 106
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 107
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$4;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$4;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginRightHide(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 22
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 23
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 24
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 25
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 26
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$1;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginRightShow(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 49
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 50
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 51
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 52
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 53
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$2;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginTopHide(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 184
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 185
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 186
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 187
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 188
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$7;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$7;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginTopShow(Landroid/view/View;Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 211
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 212
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 213
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 214
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 215
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$8;

    invoke-direct {v1, p1, p0}, Lcom/youku/phone/detail/plugin/PluginAnimationUtils$8;-><init>(Lcom/youku/phone/detail/plugin/PluginAnimationUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method
