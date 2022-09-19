.class public Lcom/youku/gamecenter/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method

.method private static caculateAnimationTime(Landroid/content/Context;IIII)J
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startX"    # I
    .param p2, "endX"    # I
    .param p3, "startY"    # I
    .param p4, "endY"    # I

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .local v15, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v2, p0

    .line 180
    check-cast v2, Landroid/app/Activity;

    .line 181
    .local v2, "a":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    iget v14, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 184
    .local v14, "height":I
    sub-int v3, p4, v14

    .line 185
    .local v3, "baseDistanceY":I
    mul-int v18, p2, p2

    mul-int v19, v3, v3

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 186
    .local v4, "baseDistance":D
    const-wide/16 v6, 0x5dc

    .line 187
    .local v6, "baseDuration":J
    const-wide/16 v16, 0x1f4

    .line 189
    .local v16, "minimumDuration":J
    sub-int v10, p2, p1

    .line 190
    .local v10, "distanceX":I
    sub-int v11, p4, p3

    .line 191
    .local v11, "distanceY":I
    mul-int v18, v10, v10

    mul-int v19, v11, v11

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 193
    .local v8, "distance":D
    long-to-double v0, v6

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    div-double v18, v18, v4

    move-wide/from16 v0, v18

    double-to-long v12, v0

    .line 195
    .local v12, "duration":J
    cmp-long v18, v12, v16

    if-gez v18, :cond_0

    move-wide/from16 v12, v16

    .line 197
    :cond_0
    const-string v18, "GameCenter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "distance :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Duration : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-wide v12
.end method

.method public static isLandscape(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pluginRightHide(Landroid/view/View;Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 204
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 209
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 210
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 211
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 212
    new-instance v1, Lcom/youku/gamecenter/util/UIUtils$4;

    invoke-direct {v1, p1, p0}, Lcom/youku/gamecenter/util/UIUtils$4;-><init>(Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static pluginRightShow(Landroid/view/View;Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 237
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 242
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 243
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 244
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 245
    new-instance v1, Lcom/youku/gamecenter/util/UIUtils$5;

    invoke-direct {v1, p1, p0}, Lcom/youku/gamecenter/util/UIUtils$5;-><init>(Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static showDwonloadContinueOrNotDialog(Landroid/content/Context;Landroid/widget/ImageView;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "locationid"    # I
    .param p5, "statistics"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/youku/gamecenter/R$style;->game_animation_dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "\u60a8\u5f53\u524d\u5904\u4e8e\u975eWiFi\u7f51\u7edc\u73af\u5883\uff0c\u8bf7\u786e\u5b9a\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const-string/jumbo v9, "\u786e\u5b9a"

    new-instance v0, Lcom/youku/gamecenter/util/UIUtils$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/util/UIUtils$2;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/youku/gamecenter/util/UIUtils$1;

    invoke-direct {v2}, Lcom/youku/gamecenter/util/UIUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 100
    .local v7, "alertDialog":Landroid/app/Dialog;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 103
    return-void
.end method

.method public static startAnimation(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startView"    # Landroid/widget/ImageView;

    .prologue
    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v20

    sget v21, Lcom/youku/gamecenter/R$id;->game_manager_entry:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 110
    .local v11, "managerLayout":Landroid/view/View;
    if-nez v11, :cond_0

    .line 175
    :goto_0
    return-void

    .line 114
    :cond_0
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 116
    .local v18, "topLeft":[I
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 118
    const/16 v20, 0x0

    aget v20, v18, v20

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x3

    add-int v8, v20, v21

    .line 119
    .local v8, "endX":I
    const/16 v20, 0x1

    aget v20, v18, v20

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    div-int/lit8 v21, v21, 0x5

    add-int v9, v20, v21

    .line 121
    .local v9, "endY":I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v15, v0, [I

    .line 122
    .local v15, "start":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 123
    const/16 v20, 0x0

    aget v16, v15, v20

    .line 124
    .local v16, "startX":I
    const/16 v20, 0x1

    aget v17, v15, v20

    .line 126
    .local v17, "startY":I
    const-string v20, "GameCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "startX : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " endX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " startY: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " endY: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 130
    .local v10, "group":Landroid/view/ViewGroup;
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v4, "animationView":Landroid/widget/ImageView;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 132
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    invoke-virtual {v10, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [I

    .line 137
    .local v5, "animationViewLocation":[I
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 139
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    aget v20, v15, v20

    const/16 v21, 0x0

    aget v21, v5, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v5, v21

    sub-int v21, v8, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    aget v23, v5, v23

    sub-int v23, v9, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 140
    .local v19, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 142
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const/high16 v20, 0x3f800000    # 1.0f

    const v21, 0x3dcccccd    # 0.1f

    const/high16 v22, 0x3f800000    # 1.0f

    const v23, 0x3dcccccd    # 0.1f

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 144
    .local v13, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 145
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 146
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v8, v2, v9}, Lcom/youku/gamecenter/util/UIUtils;->caculateAnimationTime(Landroid/content/Context;IIII)J

    move-result-wide v6

    .line 150
    .local v6, "duration":J
    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 151
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 152
    new-instance v20, Lcom/youku/gamecenter/util/UIUtils$3;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v10}, Lcom/youku/gamecenter/util/UIUtils$3;-><init>(Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 173
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
