.class public Lcom/tudou/ui/fragment/SplashFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SplashFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SplashFragment$GestureListener;,
        Lcom/tudou/ui/fragment/SplashFragment$TouchListener;,
        Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;
    }
.end annotation


# static fields
.field public static _this:Landroid/app/Activity;


# instance fields
.field private RelEightStarGuide:Landroid/widget/RelativeLayout;

.field arrowsShowEndListener:Landroid/view/animation/Animation$AnimationListener;

.field cardShowEndListener1:Landroid/view/animation/Animation$AnimationListener;

.field cardShowEndListener2:Landroid/view/animation/Animation$AnimationListener;

.field cardShowEndListener3:Landroid/view/animation/Animation$AnimationListener;

.field cardShowEndListener4:Landroid/view/animation/Animation$AnimationListener;

.field cardShowEndListener5:Landroid/view/animation/Animation$AnimationListener;

.field detector:Landroid/view/GestureDetector;

.field private goApp:Z

.field imageViewAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

.field private imageViewArrows:Landroid/widget/ImageView;

.field private imageViewCard1:Landroid/widget/ImageView;

.field private imageViewCard2:Landroid/widget/ImageView;

.field private imageViewCard3:Landroid/widget/ImageView;

.field private imageViewCard4:Landroid/widget/ImageView;

.field private imageViewCard5:Landroid/widget/ImageView;

.field private imageViewOutStarGuide:Landroid/widget/ImageView;

.field private imageViewSkip:Landroid/widget/ImageButton;

.field private imageViewStar:Landroid/widget/ImageView;

.field private imageViewStar1:Landroid/widget/ImageView;

.field private imageViewTips1:Landroid/widget/ImageView;

.field private imageViewTips2:Landroid/widget/ImageView;

.field private imageViewUpTouch:Landroid/widget/ImageView;

.field private imageViewWitch:Landroid/widget/ImageView;

.field private imageViewWitchSelected:Landroid/widget/ImageView;

.field private layout:Landroid/widget/RelativeLayout;

.field private mHandler:Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;

.field private mView:Landroid/view/View;

.field private manager:Lcom/tudou/guide/SplashSubManager;

.field private oneLevel:Landroid/widget/RelativeLayout;

.field relStarGuideAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideSubResult;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private screenWidth:I

.field skipListener:Landroid/view/View$OnClickListener;

.field starPushMiddleEndListener:Landroid/view/animation/Animation$AnimationListener;

.field private threeLevel:Landroid/widget/RelativeLayout;

.field tips1EndListener:Landroid/view/animation/Animation$AnimationListener;

.field tips2EndListener:Landroid/view/animation/Animation$AnimationListener;

.field witchAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->goApp:Z

    .line 71
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mHandler:Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;

    .line 266
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$6;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->skipListener:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$7;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->tips1EndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 322
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$8;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->tips2EndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 339
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$9;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->arrowsShowEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 355
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$10;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$10;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->starPushMiddleEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 374
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$11;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$11;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 394
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$12;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->witchAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 415
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$13;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$13;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->relStarGuideAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 435
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$14;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$14;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener1:Landroid/view/animation/Animation$AnimationListener;

    .line 450
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$15;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$15;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener2:Landroid/view/animation/Animation$AnimationListener;

    .line 465
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$16;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$16;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener3:Landroid/view/animation/Animation$AnimationListener;

    .line 480
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$17;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener4:Landroid/view/animation/Animation$AnimationListener;

    .line 495
    new-instance v0, Lcom/tudou/ui/fragment/SplashFragment$18;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashFragment$18;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener5:Landroid/view/animation/Animation$AnimationListener;

    .line 716
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SplashFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->results:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tudou/ui/fragment/SplashFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/SplashFragment;->goApp:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewTips2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewArrows:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/SplashFragment;Landroid/widget/ImageView;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tudou/ui/fragment/SplashFragment;->alphaAnimation(Landroid/widget/ImageView;JLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewUpTouch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;J)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SplashFragment;->upDownAnimation(Landroid/view/View;J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewStar1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/tudou/ui/fragment/SplashFragment;Landroid/widget/ImageView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SplashFragment;->rotateAnimation(Landroid/widget/ImageView;J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashFragment;->twoLevelAnimStart()V

    return-void
.end method

.method static synthetic access$2700(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->RelEightStarGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;IFFLandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/tudou/ui/fragment/SplashFragment;->alphaAnimation(Landroid/view/View;IFFLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewOutStarGuide:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/SplashFragment;->startRotateAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mHandler:Lcom/tudou/ui/fragment/SplashFragment$SplashHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/SplashFragment;->upDownAnimation(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard5:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewWitchSelected:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewWitch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/SplashFragment;->upAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashFragment;->threeLevelAnimStart()V

    return-void
.end method

.method static synthetic access$4200(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewStar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tudou/ui/fragment/SplashFragment;->starFromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewTips1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tudou/ui/fragment/SplashFragment;->fromMidPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private alphaAnimation(Landroid/view/View;IFFLandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "time"    # I
    .param p3, "fromAlpha"    # F
    .param p4, "toAlpha"    # F
    .param p5, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 616
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 621
    .local v0, "mAlphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 623
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 624
    invoke-virtual {v0, p5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 625
    return-void
.end method

.method private alphaAnimation(Landroid/widget/ImageView;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "time"    # J
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 597
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 599
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 600
    invoke-virtual {v0, p4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 601
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 602
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 603
    return-void
.end method

.method private fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .param p1, "image"    # Landroid/view/View;
    .param p2, "time"    # J
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 549
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 550
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    move v5, v3

    move v6, v4

    move v7, v3

    move v9, v3

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 553
    .local v2, "trans":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 554
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 556
    .local v11, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 557
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 558
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 559
    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 560
    invoke-virtual {p1, v12}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 561
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 562
    invoke-virtual {v12}, Landroid/view/animation/AnimationSet;->start()V

    .line 563
    return-void
.end method

.method private fromMidPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .param p1, "image"    # Landroid/view/View;
    .param p2, "time"    # J
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 572
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v10, -0x3d600000    # -80.0f

    move v5, v3

    move v6, v4

    move v7, v3

    move v8, v4

    move v9, v3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 576
    .local v2, "trans":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 578
    .local v11, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 579
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 580
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 581
    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 582
    invoke-virtual {p1, v12}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 584
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 585
    invoke-virtual {v12}, Landroid/view/animation/AnimationSet;->start()V

    .line 586
    return-void
.end method

.method private initParamer()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v0, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenWidth:I

    .line 93
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenHeight:I

    .line 94
    const-string v1, "SplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "SplashActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v7, 0x7f0a02dc

    const/4 v6, 0x0

    .line 99
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewStar:Landroid/widget/ImageView;

    .line 100
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewStar1:Landroid/widget/ImageView;

    .line 101
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0608

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    .line 102
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SplashFragment;->skipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const/16 v4, 0x226

    iget v5, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenWidth:I

    if-le v4, v5, :cond_0

    .line 130
    :goto_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->oneLevel:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05f7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewArrows:Landroid/widget/ImageView;

    .line 132
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewUpTouch:Landroid/widget/ImageView;

    .line 133
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewTips1:Landroid/widget/ImageView;

    .line 134
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewTips2:Landroid/widget/ImageView;

    .line 136
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->RelEightStarGuide:Landroid/widget/RelativeLayout;

    .line 137
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewOutStarGuide:Landroid/widget/ImageView;

    .line 138
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c05ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewWitch:Landroid/widget/ImageView;

    .line 139
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0600

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewWitchSelected:Landroid/widget/ImageView;

    .line 141
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0601

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->threeLevel:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0602

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard1:Landroid/widget/ImageView;

    .line 143
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard1:Landroid/widget/ImageView;

    new-instance v5, Lcom/tudou/ui/fragment/SplashFragment$1;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SplashFragment$1;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0605

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard2:Landroid/widget/ImageView;

    .line 193
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard2:Landroid/widget/ImageView;

    new-instance v5, Lcom/tudou/ui/fragment/SplashFragment$2;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SplashFragment$2;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0606

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard3:Landroid/widget/ImageView;

    .line 210
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard3:Landroid/widget/ImageView;

    new-instance v5, Lcom/tudou/ui/fragment/SplashFragment$3;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SplashFragment$3;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0603

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard4:Landroid/widget/ImageView;

    .line 227
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard4:Landroid/widget/ImageView;

    new-instance v5, Lcom/tudou/ui/fragment/SplashFragment$4;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SplashFragment$4;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v5, 0x7f0c0607

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard5:Landroid/widget/ImageView;

    .line 244
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard5:Landroid/widget/ImageView;

    new-instance v5, Lcom/tudou/ui/fragment/SplashFragment$5;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/SplashFragment$5;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashFragment;->oneLevelAnimStart()V

    .line 264
    return-void

    .line 106
    :cond_0
    iget v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenWidth:I

    const/16 v5, 0x5dc

    if-ge v4, v5, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 109
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 111
    .local v1, "marginTop":I
    iget v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenWidth:I

    rsub-int v4, v4, 0x5dc

    div-int/lit8 v4, v4, 0x2

    add-int v0, v4, v1

    .line 113
    .local v0, "marginRight":I
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 116
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 117
    invoke-virtual {v2, v6, v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "marginRight":I
    .end local v1    # "marginTop":I
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "width":I
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    .restart local v1    # "marginTop":I
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 125
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v1, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    iget-object v4, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private oneLevelAnimStart()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->oneLevel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewTips1:Landroid/widget/ImageView;

    const-wide/16 v2, 0x320

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->tips1EndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 289
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewStar:Landroid/widget/ImageView;

    const-wide/32 v2, 0xc350

    invoke-direct {p0, v0, v2, v3}, Lcom/tudou/ui/fragment/SplashFragment;->rotateAnimation(Landroid/widget/ImageView;J)V

    .line 290
    return-void
.end method

.method private rotateAnimation(Landroid/widget/ImageView;J)V
    .locals 8
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "time"    # J

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 531
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 535
    .local v0, "a":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 536
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 537
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 538
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 539
    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->start()V

    .line 540
    return-void
.end method

.method private starFromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "time"    # J
    .param p4, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v2, 0x0

    .line 668
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->screenHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 670
    .local v0, "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 671
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 672
    invoke-virtual {v0, p4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 674
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 675
    return-void
.end method

.method private startRotateAnimation(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # I

    .prologue
    .line 518
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 520
    .local v0, "rotateAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 521
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 522
    return-void
.end method

.method private threeLevelAnimStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->threeLevel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewSkip:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard1:Landroid/widget/ImageView;

    const-wide/16 v2, 0x320

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener1:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard2:Landroid/widget/ImageView;

    const-wide/16 v2, 0x384

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener2:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard3:Landroid/widget/ImageView;

    const-wide/16 v2, 0x3e8

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener3:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 302
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard4:Landroid/widget/ImageView;

    const-wide/16 v2, 0x44c

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener4:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 303
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewCard5:Landroid/widget/ImageView;

    const-wide/16 v2, 0x4b0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->cardShowEndListener5:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tudou/ui/fragment/SplashFragment;->fromDownPush(Landroid/view/View;JLandroid/view/animation/Animation$AnimationListener;)V

    .line 304
    return-void
.end method

.method private twoLevelAnimStart()V
    .locals 6

    .prologue
    .line 293
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->imageViewWitch:Landroid/widget/ImageView;

    const/16 v2, 0x5dc

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/tudou/ui/fragment/SplashFragment;->witchAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/SplashFragment;->alphaAnimation(Landroid/view/View;IFFLandroid/view/animation/Animation$AnimationListener;)V

    .line 294
    return-void
.end method

.method private upAnimation(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # I

    .prologue
    .line 678
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 680
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 682
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 683
    return-void
.end method

.method private upDownAnimation(Landroid/view/View;J)V
    .locals 4
    .param p1, "image"    # Landroid/view/View;
    .param p2, "time"    # J

    .prologue
    const/4 v2, 0x0

    .line 634
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 636
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 637
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 638
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 640
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 641
    return-void
.end method

.method private upDownAnimation(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v2, 0x0

    .line 649
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 651
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 652
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 653
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 654
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 655
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 656
    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 657
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v0, 0x7f030144

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/SplashFragment;->_this:Landroid/app/Activity;

    .line 77
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    .line 78
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v0}, Lcom/tudou/guide/SplashSubManager;->getResults()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->results:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashFragment;->initParamer()V

    .line 80
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashFragment;->initView()V

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SplashFragment$GestureListener;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->detector:Landroid/view/GestureDetector;

    .line 82
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->layout:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tudou/ui/fragment/SplashFragment$TouchListener;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SplashFragment$TouchListener;-><init>(Lcom/tudou/ui/fragment/SplashFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    .line 85
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 279
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SplashFragment;->goApp:Z

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/guide/SplashSubManager;->getOnGoInAppListener()Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/guide/SplashSubManager;->getOnGoInAppListener()Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;->onGoIn()V

    goto :goto_0
.end method
