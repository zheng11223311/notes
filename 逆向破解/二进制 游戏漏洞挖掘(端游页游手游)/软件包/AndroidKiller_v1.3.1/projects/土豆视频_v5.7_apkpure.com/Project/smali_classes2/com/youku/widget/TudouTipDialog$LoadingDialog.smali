.class Lcom/youku/widget/TudouTipDialog$LoadingDialog;
.super Landroid/app/Dialog;
.source "TudouTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TudouTipDialog;
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

.field private mBtnGoDiscovery:Landroid/widget/Button;

.field private mHomePageActivity:Lcom/tudou/ui/activity/HomePageActivity;

.field private mImgCancel:Landroid/widget/ImageView;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mShowMes:Ljava/lang/String;

.field private mUseIntrinisicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    .line 133
    const v0, 0x7f0e0051

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->isTouchModal:Z

    .line 134
    iput-object p1, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mHomePageActivity:Lcom/tudou/ui/activity/HomePageActivity;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/TudouTipDialog$LoadingDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mUseIntrinisicAnimation:Z

    return v0
.end method

.method static synthetic access$100(Lcom/youku/widget/TudouTipDialog$LoadingDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private startAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 201
    new-instance v0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/TudouTipDialog$LoadingDialog$1;-><init>(Lcom/youku/widget/TudouTipDialog$LoadingDialog;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method private stopAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 215
    new-instance v0, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/youku/widget/TudouTipDialog$LoadingDialog$2;-><init>(Lcom/youku/widget/TudouTipDialog$LoadingDialog;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mHomePageActivity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/HomePageActivity;->showDiscoveryIcon()V

    .line 185
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    invoke-static {}, Lcom/youku/widget/TudouTipDialog;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mImgCancel:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mBtnGoDiscovery:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mHomePageActivity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/HomePageActivity;->goDiscovery()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 157
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f0300f2

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->setContentView(I)V

    .line 159
    const v0, 0x7f0c0443

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mImgCancel:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0c0444

    invoke-virtual {p0, v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mBtnGoDiscovery:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mImgCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mBtnGoDiscovery:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 167
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 169
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 170
    iget-object v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 173
    iget-boolean v0, p0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->isTouchModal:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 198
    return-void
.end method
