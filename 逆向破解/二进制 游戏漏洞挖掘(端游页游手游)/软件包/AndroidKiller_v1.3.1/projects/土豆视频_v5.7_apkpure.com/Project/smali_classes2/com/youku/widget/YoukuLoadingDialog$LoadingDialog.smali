.class Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;
.super Landroid/app/Dialog;
.source "YoukuLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/YoukuLoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingDialog"
.end annotation


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x7d0


# instance fields
.field private isTouchModal:Z

.field private loading:Landroid/widget/ImageView;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mShowMes:Ljava/lang/String;

.field private mTxtContent:Landroid/widget/TextView;

.field private mUseIntrinisicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const v0, 0x7f0e0051

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isTouchModal:Z

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mes"    # Ljava/lang/String;

    .prologue
    .line 261
    const v0, 0x7f0e0051

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isTouchModal:Z

    .line 262
    iput-object p2, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mShowMes:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnBack"    # Z

    .prologue
    .line 273
    const v0, 0x7f0e0051

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isTouchModal:Z

    .line 275
    invoke-virtual {p0, p2}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCancelable(Z)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTouchModal"    # Z
    .param p3, "isOnBack"    # Z

    .prologue
    .line 267
    const v0, 0x7f0e0051

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isTouchModal:Z

    .line 268
    iput-boolean p2, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isTouchModal:Z

    .line 269
    invoke-virtual {p0, p3}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setCancelable(Z)V

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mUseIntrinisicAnimation:Z

    return v0
.end method

.method static synthetic access$100(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private startAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 321
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$1;-><init>(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method private stopAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 335
    new-instance v0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog$2;-><init>(Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->loading:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->stopAnimation(Landroid/view/View;)V

    .line 305
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 280
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const v0, 0x7f030216

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->setContentView(I)V

    .line 282
    const v0, 0x7f0c09d6

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->loading:Landroid/widget/ImageView;

    .line 283
    const v0, 0x7f0c02bb

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mTxtContent:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mShowMes:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mTxtContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mShowMes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 289
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 290
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 292
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 293
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->loading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->loading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->mUseIntrinisicAnimation:Z

    .line 295
    iget-boolean v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->isTouchModal:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 299
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 316
    iget-object v0, p0, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->loading:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/youku/widget/YoukuLoadingDialog$LoadingDialog;->startAnimation(Landroid/view/View;)V

    .line 318
    return-void
.end method
