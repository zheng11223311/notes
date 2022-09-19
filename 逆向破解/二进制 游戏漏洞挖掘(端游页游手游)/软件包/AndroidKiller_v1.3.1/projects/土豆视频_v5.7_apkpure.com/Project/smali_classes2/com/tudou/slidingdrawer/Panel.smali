.class public Lcom/tudou/slidingdrawer/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;,
        Lcom/tudou/slidingdrawer/Panel$State;,
        Lcom/tudou/slidingdrawer/Panel$OnPanelListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Panel"

.field public static final TOP:I


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/tudou/slidingdrawer/Panel$State;

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private panelListener:Lcom/tudou/slidingdrawer/Panel$OnPanelListener;

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v10, 0x40

    const v9, 0x7f0d00d2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    new-instance v4, Lcom/tudou/slidingdrawer/Panel$1;

    invoke-direct {v4, p0}, Lcom/tudou/slidingdrawer/Panel$1;-><init>(Lcom/tudou/slidingdrawer/Panel;)V

    iput-object v4, p0, Lcom/tudou/slidingdrawer/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    .line 358
    new-instance v4, Lcom/tudou/slidingdrawer/Panel$2;

    invoke-direct {v4, p0}, Lcom/tudou/slidingdrawer/Panel$2;-><init>(Lcom/tudou/slidingdrawer/Panel;)V

    iput-object v4, p0, Lcom/tudou/slidingdrawer/Panel;->startAnimation:Ljava/lang/Runnable;

    .line 466
    new-instance v4, Lcom/tudou/slidingdrawer/Panel$3;

    invoke-direct {v4, p0}, Lcom/tudou/slidingdrawer/Panel$3;-><init>(Lcom/tudou/slidingdrawer/Panel;)V

    iput-object v4, p0, Lcom/tudou/slidingdrawer/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 76
    sget-object v4, Lcom/tudou/android/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "animationDuration"

    const/16 v6, 0x2ee

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/tudou/slidingdrawer/Panel;->mDuration:I

    .line 81
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "position"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 84
    const-string v4, "top"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    iput v3, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    .line 98
    :goto_0
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "linearFlying"

    invoke-interface {p2, v4, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tudou/slidingdrawer/Panel;->mLinearFlying:Z

    .line 101
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "openedHandle"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 105
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/tudou/slidingdrawer/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tudou/slidingdrawer/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/slidingdrawer/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .line 116
    :cond_1
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "closedHandle"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 120
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/tudou/slidingdrawer/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tudou/slidingdrawer/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/slidingdrawer/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 151
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    iget v4, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    if-ne v4, v2, :cond_a

    :cond_4
    :goto_3
    iput v2, p0, Lcom/tudou/slidingdrawer/Panel;->mOrientation:I

    .line 154
    iget v2, p0, Lcom/tudou/slidingdrawer/Panel;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/tudou/slidingdrawer/Panel;->setOrientation(I)V

    .line 155
    sget-object v2, Lcom/tudou/slidingdrawer/Panel$State;->READY:Lcom/tudou/slidingdrawer/Panel$State;

    iput-object v2, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    .line 156
    new-instance v2, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;-><init>(Lcom/tudou/slidingdrawer/Panel;)V

    iput-object v2, p0, Lcom/tudou/slidingdrawer/Panel;->mGestureListener:Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;

    .line 157
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/tudou/slidingdrawer/Panel;->mGestureListener:Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;

    invoke-direct {v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/tudou/slidingdrawer/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 158
    iget-object v2, p0, Lcom/tudou/slidingdrawer/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 159
    return-void

    .line 86
    :cond_5
    const-string v4, "bottom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 87
    iput v2, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    goto/16 :goto_0

    .line 88
    :cond_6
    const-string v4, "left"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 89
    const/4 v4, 0x2

    iput v4, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    goto/16 :goto_0

    .line 90
    :cond_7
    const-string v4, "right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 91
    const/4 v4, 0x3

    iput v4, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    goto/16 :goto_0

    .line 93
    :cond_8
    iput v2, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    goto/16 :goto_0

    .line 96
    :cond_9
    iput v2, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    goto/16 :goto_0

    :cond_a
    move v2, v3

    .line 152
    goto :goto_3

    .line 126
    :catch_0
    move-exception v4

    goto :goto_2

    .line 111
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/slidingdrawer/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tudou/slidingdrawer/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1002(Lcom/tudou/slidingdrawer/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/tudou/slidingdrawer/Panel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/tudou/slidingdrawer/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/tudou/slidingdrawer/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mDuration:I

    return v0
.end method

.method static synthetic access$1300(Lcom/tudou/slidingdrawer/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1302(Lcom/tudou/slidingdrawer/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/tudou/slidingdrawer/Panel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1400(Lcom/tudou/slidingdrawer/Panel;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tudou/slidingdrawer/Panel;->postProcess()V

    return-void
.end method

.method static synthetic access$1500(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tudou/slidingdrawer/Panel;FII)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/slidingdrawer/Panel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/slidingdrawer/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/tudou/slidingdrawer/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/tudou/slidingdrawer/Panel;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContentHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mGestureListener:Lcom/tudou/slidingdrawer/Panel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/slidingdrawer/Panel;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/slidingdrawer/Panel;)Lcom/tudou/slidingdrawer/Panel$State;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tudou/slidingdrawer/Panel;Lcom/tudou/slidingdrawer/Panel$State;)Lcom/tudou/slidingdrawer/Panel$State;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;
    .param p1, "x1"    # Lcom/tudou/slidingdrawer/Panel$State;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tudou/slidingdrawer/Panel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/slidingdrawer/Panel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/slidingdrawer/Panel;)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;

    .prologue
    .line 22
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mVelocity:F

    return v0
.end method

.method static synthetic access$902(Lcom/tudou/slidingdrawer/Panel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tudou/slidingdrawer/Panel;
    .param p1, "x1"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/tudou/slidingdrawer/Panel;->mVelocity:F

    return p1
.end method

.method private ensureRange(FII)F
    .locals 1
    .param p1, "v"    # F
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 302
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 303
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 304
    return p1
.end method

.method private postProcess()V
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 492
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->panelListener:Lcom/tudou/slidingdrawer/Panel$OnPanelListener;

    if-eqz v0, :cond_1

    .line 493
    iget-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->panelListener:Lcom/tudou/slidingdrawer/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/tudou/slidingdrawer/Panel$OnPanelListener;->onPanelClosed(Lcom/tudou/slidingdrawer/Panel;)V

    .line 499
    :cond_1
    :goto_1
    return-void

    .line 488
    :cond_2
    iget-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->panelListener:Lcom/tudou/slidingdrawer/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/tudou/slidingdrawer/Panel$OnPanelListener;->onPanelOpened(Lcom/tudou/slidingdrawer/Panel;)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    sget-object v2, Lcom/tudou/slidingdrawer/Panel$State;->ABOUT_TO_ANIMATE:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    if-nez v1, :cond_2

    .line 284
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel;->mOrientation:I

    if-ne v1, v4, :cond_5

    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContentHeight:I

    .line 286
    .local v0, "delta":I
    :goto_0
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    if-nez v1, :cond_1

    .line 287
    :cond_0
    neg-int v0, v0

    .line 289
    :cond_1
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel;->mOrientation:I

    if-ne v1, v4, :cond_6

    .line 290
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    .end local v0    # "delta":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    sget-object v2, Lcom/tudou/slidingdrawer/Panel$State;->TRACKING:Lcom/tudou/slidingdrawer/Panel$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    sget-object v2, Lcom/tudou/slidingdrawer/Panel$State;->FLYING:Lcom/tudou/slidingdrawer/Panel$State;

    if-ne v1, v2, :cond_4

    .line 296
    :cond_3
    iget v1, p0, Lcom/tudou/slidingdrawer/Panel;->mTrackX:F

    iget v2, p0, Lcom/tudou/slidingdrawer/Panel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 299
    return-void

    .line 284
    :cond_5
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContentWidth:I

    goto :goto_0

    .line 292
    .restart local v0    # "delta":I
    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 240
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your Panel must have a View whose id attribute is \'R.id.panelHandle\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/tudou/slidingdrawer/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your Panel must have a View whose id attribute is \'R.id.panelContent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->removeView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->removeView(Landroid/view/View;)V

    .line 256
    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tudou/slidingdrawer/Panel;->mPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->addView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->addView(Landroid/view/View;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 272
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 273
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContentWidth:I

    .line 274
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContentHeight:I

    .line 275
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 198
    return-void
.end method

.method public setOnPanelListener(Lcom/tudou/slidingdrawer/Panel$OnPanelListener;)V
    .locals 0
    .param p1, "onPanelListener"    # Lcom/tudou/slidingdrawer/Panel$OnPanelListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tudou/slidingdrawer/Panel;->panelListener:Lcom/tudou/slidingdrawer/Panel$OnPanelListener;

    .line 170
    return-void
.end method

.method public setOpen(ZZ)V
    .locals 2
    .param p1, "open"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/tudou/slidingdrawer/Panel;->isOpen()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 211
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    .line 212
    if-eqz p2, :cond_3

    .line 213
    sget-object v0, Lcom/tudou/slidingdrawer/Panel$State;->ABOUT_TO_ANIMATE:Lcom/tudou/slidingdrawer/Panel$State;

    iput-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mState:Lcom/tudou/slidingdrawer/Panel$State;

    .line 214
    iget-boolean v0, p0, Lcom/tudou/slidingdrawer/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tudou/slidingdrawer/Panel;->post(Ljava/lang/Runnable;)Z

    .line 226
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 211
    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/tudou/slidingdrawer/Panel;->mContent:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-direct {p0}, Lcom/tudou/slidingdrawer/Panel;->postProcess()V

    goto :goto_1

    .line 222
    :cond_4
    const/16 v1, 0x8

    goto :goto_2
.end method
