.class public Lcom/tudou/ui/activity/BindActivity;
.super Landroid/app/Dialog;
.source "BindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CID_CARTOON:Ljava/lang/String; = "9"

.field public static final CID_DANMU:Ljava/lang/String; = "1"

.field public static final CID_FILM:Ljava/lang/String; = "22"

.field public static final CID_TV_PLAY:Ljava/lang/String; = "30"

.field public static final CID_VARIETY:Ljava/lang/String; = "31"

.field public static WXF_START:J


# instance fields
.field private havestate:Z

.field private isDanmu:Z

.field private mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/widget/Button;

.field private mCid:Ljava/lang/String;

.field private mColorWorld:Ljava/lang/String;

.field private mEachTitle:Ljava/lang/String;

.field private mIsUGC:Z

.field private mItemCode:Ljava/lang/String;

.field private mOtherButton:Landroid/widget/ImageView;

.field private mPlayCount:Ljava/lang/String;

.field private mQQButton:Landroid/widget/ImageView;

.field private mQQZoneButton:Landroid/widget/ImageView;

.field private mShareContent:Ljava/lang/String;

.field private mShareType:I

.field private mSinceWorld:Ljava/lang/String;

.field private mTencentWeibo:Landroid/widget/ImageView;

.field private mWeiboButton:Landroid/widget/ImageView;

.field mWxButton:Landroid/widget/ImageView;

.field private mWxSterButton:Landroid/widget/ImageView;

.field private newBundle:Landroid/os/Bundle;

.field private oldBundle:Landroid/os/Bundle;

.field private shortDes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tudou/ui/activity/BindActivity;->WXF_START:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 61
    const v0, 0x7f0e0066

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-boolean v1, p0, Lcom/tudou/ui/activity/BindActivity;->mIsUGC:Z

    .line 87
    iput v1, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    .line 63
    invoke-static {}, Lcom/youku/util/Util;->getRandomColorWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mColorWorld:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/youku/util/Util;->getRandomWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mSinceWorld:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    .line 67
    const-string/jumbo v0, "shareType"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    .line 68
    iput-object p3, p0, Lcom/tudou/ui/activity/BindActivity;->oldBundle:Landroid/os/Bundle;

    .line 69
    const-string/jumbo v0, "state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tudou/ui/activity/BindActivity;->havestate:Z

    .line 70
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->oldBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->refreshBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method private buildQQShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "targetUrl"    # Ljava/lang/String;
    .param p4, "isQzone"    # Z

    .prologue
    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v1, "sBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/tudou/ui/activity/BindActivity;->mColorWorld:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_0
    iget v2, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 446
    const-string/jumbo v2, "\u89c6\u9891\u5927\u5496\u4eec\u90fd\u5230\u6211\u7897\u91cc\u6765\u4e86\uff0c\u6765\u571f\u8c46\u8ba2\u9605\u5427\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    if-nez p4, :cond_1

    .line 448
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "buildStr":Ljava/lang/String;
    return-object v0

    .line 451
    .end local v0    # "buildStr":Ljava/lang/String;
    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0266

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "msg4":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/activity/BindActivity;->mColorWorld:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 467
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "buildStr":Ljava/lang/String;
    return-object v0
.end method

.method private buildSinaShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "videoTitle"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v3, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0266

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "msg4":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 483
    iget-boolean v3, p0, Lcom/tudou/ui/activity/BindActivity;->isDanmu:Z

    if-eqz v3, :cond_1

    .line 485
    const-string/jumbo v3, "\u3010\u571f\u8c46\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2d\u56fd\u5f39\u5e55\u54ea\u5bb6\u5f3a\uff1f\u6765\u571f\u8c46\uff0c\u627e\u69fd\u573a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 486
    :cond_1
    iget-boolean v3, p0, Lcom/tudou/ui/activity/BindActivity;->mIsUGC:Z

    if-eqz v3, :cond_2

    .line 488
    const-string/jumbo v3, "\u3010\u571f\u8c46\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 491
    :cond_2
    const-string v1, ""

    .line 492
    .local v1, "playWord":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/activity/BindActivity;->mPlayCount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tudou/ui/activity/BindActivity;->mPlayCount:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 493
    :cond_3
    const-string/jumbo v1, "\u5c0f\u4f19\u4f34\u4eec\u6b63\u5728\u770b"

    .line 498
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/activity/BindActivity;->shortDes:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "\u6715\u5df2\u9605\uff0c\u7231\u537f\u83ab\u8f9c\u8d1f"

    iget-object v4, p0, Lcom/tudou/ui/activity/BindActivity;->shortDes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 499
    :cond_4
    const-string/jumbo v3, "\u3010\u571f\u8c46\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 495
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/ui/activity/BindActivity;->mPlayCount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5c0f\u4f19\u4f34\u6b63\u5728\u770b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 501
    :cond_6
    const-string/jumbo v3, "\u3010\u571f\u8c46\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->shortDes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 505
    .end local v1    # "playWord":Ljava/lang/String;
    :cond_7
    iget v3, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 507
    const-string v3, "#\u571f\u8c46\u81ea\u9891\u9053#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->mSinceWorld:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private deletUrlGang(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "lastStr":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 384
    .end local v0    # "lastStr":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getQQShareBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v1, "qqBundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "videoTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "targetUrl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "targetUrl":Ljava/lang/String;
    const-string/jumbo v5, "req_type"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->oldBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "summary"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "summary":Ljava/lang/String;
    iget v5, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    if-ne v5, v7, :cond_0

    .line 353
    const/4 v5, 0x0

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/tudou/ui/activity/BindActivity;->buildQQShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 354
    const-string/jumbo v5, "title"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5206\u4eab\u81ea\u9891\u9053\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v5, "targetUrl"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    const-string/jumbo v5, "summary"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string v6, "imageUrl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "imageUrl":Ljava/lang/String;
    const-string v5, "imageUrl"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v5, "appName"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string v7, "appName"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-object v1

    .line 357
    .end local v0    # "imageUrl":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v5, "targetUrl"

    invoke-direct {p0, v3}, Lcom/tudou/ui/activity/BindActivity;->deletUrlGang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getQQZoneShareBundle()Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 393
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v2, "qqBundle":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "videoTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "summary"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "summary":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "targetUrl"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "targetUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string v7, "imageUrl"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "imgUrl":Ljava/lang/String;
    iget v6, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    if-ne v6, v9, :cond_1

    .line 402
    const-string/jumbo v6, "req_type"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    :goto_0
    const-string/jumbo v6, "title"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v6, "imageUrl"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 417
    iget v6, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    if-ne v6, v9, :cond_2

    .line 418
    :cond_0
    const-string/jumbo v6, "summary"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_1
    const-string/jumbo v6, "targetUrl"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v6, "appName"

    iget-object v7, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string v8, "appName"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-object v2

    .line 405
    .end local v0    # "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v6, "req_type"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 420
    .restart local v0    # "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v6, "summary"

    invoke-direct {p0, v5, v3, v4, v8}, Lcom/tudou/ui/activity/BindActivity;->buildQQShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private goWXShare(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/tudou/android/wxapi/WXEntryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "shareType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 106
    const v0, 0x7f0c00ea

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mCancelButton:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWeiboButton:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxButton:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxSterButton:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mOtherButton:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQZoneButton:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0c00e7

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQButton:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWeiboButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxSterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mOtherButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQZoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWeiboButton:Landroid/widget/ImageView;

    const v1, 0x7f020a5d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->isWXInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxButton:Landroid/widget/ImageView;

    const v1, 0x7f020a5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxSterButton:Landroid/widget/ImageView;

    const v1, 0x7f020634

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/tudou/videoshare/ShareUtil;->isInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQZoneButton:Landroid/widget/ImageView;

    const v1, 0x7f02072d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQButton:Landroid/widget/ImageView;

    const v1, 0x7f02072b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :goto_1
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxButton:Landroid/widget/ImageView;

    const v1, 0x7f020a60

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mWxSterButton:Landroid/widget/ImageView;

    const v1, 0x7f020635

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQZoneButton:Landroid/widget/ImageView;

    const v1, 0x7f02072e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mQQButton:Landroid/widget/ImageView;

    const v1, 0x7f02072c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private refreshBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "newBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "videoTitle"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "videoTitle":Ljava/lang/String;
    const-string/jumbo v5, "videoUrl"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "videoUrl":Ljava/lang/String;
    const-string v5, "itemCode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->mItemCode:Ljava/lang/String;

    .line 158
    const-string v5, "picUrl"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "picUrl":Ljava/lang/String;
    const-string/jumbo v5, "summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "summary":Ljava/lang/String;
    const-string v5, "isUGC"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tudou/ui/activity/BindActivity;->mIsUGC:Z

    .line 161
    const-string/jumbo v5, "shortDes"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->shortDes:Ljava/lang/String;

    .line 162
    const-string v5, "isDanmu"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tudou/ui/activity/BindActivity;->isDanmu:Z

    .line 164
    const-string v5, "cid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->mCid:Ljava/lang/String;

    .line 165
    const-string v5, "eachTitle"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->mEachTitle:Ljava/lang/String;

    .line 166
    const-string v5, "playCount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->mPlayCount:Ljava/lang/String;

    .line 167
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "videoTitle=1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=mCid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/activity/BindActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=mEachTitle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/activity/BindActivity;->mEachTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=mPlayCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/ui/activity/BindActivity;->mPlayCount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v5, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 174
    iput-object v2, p0, Lcom/tudou/ui/activity/BindActivity;->mShareContent:Ljava/lang/String;

    .line 175
    const-string/jumbo v5, "shareContent"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    const-string/jumbo v5, "videoTitle"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v5, "itemCode"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->mItemCode:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v5, "picUrl"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v5, "req_type"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v5, "summary"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v5, "targetUrl"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v5, "imageUrl"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v5, "appName"

    const-string/jumbo v6, "\u571f\u8c46\u89c6\u9891\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v5, "mShareType"

    iget v6, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v5, "mColorWorld"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->mColorWorld:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v5, "shortDes"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->shortDes:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v5, "imgUrl"

    const-string v6, "imgUrl"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v5, "isUGC"

    iget-boolean v6, p0, Lcom/tudou/ui/activity/BindActivity;->mIsUGC:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string v5, "cid"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "eachTitle"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->mEachTitle:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v5, "playCount"

    iget-object v6, p0, Lcom/tudou/ui/activity/BindActivity;->mPlayCount:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v5, "isDanmu"

    iget-boolean v6, p0, Lcom/tudou/ui/activity/BindActivity;->isDanmu:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    return-object v0

    .line 177
    :cond_0
    invoke-direct {p0, v3, v2, v4}, Lcom/tudou/ui/activity/BindActivity;->buildShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/activity/BindActivity;->mShareContent:Ljava/lang/String;

    .line 178
    const-string/jumbo v5, "shareContent"

    invoke-direct {p0, v3, v2, v4}, Lcom/tudou/ui/activity/BindActivity;->buildSinaShareContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private trackShareClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->mItemCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    const-string/jumbo v1, "vid"

    iget-object v2, p0, Lcom/tudou/ui/activity/BindActivity;->mItemCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_0
    const-string/jumbo v1, "t1.share_sshare.shareclick"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 323
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 434
    sget-object v0, Lcom/tudou/videoshare/ShareUtil;->mTencentWeibo:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 435
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 220
    .local v6, "id":I
    const v0, 0x7f0c00ea

    if-ne v6, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\u5206\u4eab\u53d6\u6d88\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v2, "\u5206\u4eab\u9875"

    const-string/jumbo v3, "\u5206\u4eab\u53d6\u6d88\u6309\u94ae"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 223
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BindActivity;->dismiss()V

    .line 313
    :goto_0
    return-void

    .line 226
    :cond_0
    const v0, 0x7f0c00eb

    if-ne v6, v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BindActivity;->dismiss()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 241
    :cond_2
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 253
    :pswitch_1
    const-string/jumbo v0, "\u5fae\u4fe1\u597d\u53cb"

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->trackShareClick(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "shareType"

    const-string v2, "WX"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/tudou/ui/activity/BindActivity$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/BindActivity$2;-><init>(Lcom/tudou/ui/activity/BindActivity;)V

    const-string v3, "path"

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/videoshare/ShareUtil;->shareWX(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_2
    const-string/jumbo v0, "\u65b0\u6d6a\u5fae\u535a"

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->trackShareClick(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/tudou/ui/activity/BindActivity$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/BindActivity$1;-><init>(Lcom/tudou/ui/activity/BindActivity;)V

    const-string v3, "path"

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/videoshare/ShareUtil;->goShareSinaAdvance(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_3
    const-string/jumbo v0, "\u5fae\u4fe1\u670b\u53cb\u5708"

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->trackShareClick(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "shareType"

    const-string v2, "WXF"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/tudou/ui/activity/BindActivity$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/BindActivity$3;-><init>(Lcom/tudou/ui/activity/BindActivity;)V

    const-string v3, "path"

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/videoshare/ShareUtil;->shareWX(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_4
    const-string/jumbo v0, "\u624b\u673aQQ"

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->trackShareClick(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/tudou/ui/activity/BindActivity;->getQQShareBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TYPE_QQ"

    new-instance v3, Lcom/tudou/ui/activity/BindActivity$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/activity/BindActivity$4;-><init>(Lcom/tudou/ui/activity/BindActivity;)V

    const-string v4, "path"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tudou/videoshare/ShareUtil;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_5
    const-string v0, "QQ\u7a7a\u95f4"

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->trackShareClick(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/tudou/ui/activity/BindActivity;->getQQZoneShareBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TYPE_QQ_ZONE"

    new-instance v3, Lcom/tudou/ui/activity/BindActivity$5;

    invoke-direct {v3, p0}, Lcom/tudou/ui/activity/BindActivity$5;-><init>(Lcom/tudou/ui/activity/BindActivity;)V

    const-string v4, "path"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tudou/videoshare/ShareUtil;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :pswitch_6
    const-string/jumbo v0, "\u5206\u4eab\u5230\u5176\u5b83"

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->trackShareClick(Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/tudou/ui/activity/BindActivity;->mShareType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->newBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "targetUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mShareContent:Ljava/lang/String;

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->mShareContent:Ljava/lang/String;

    const-string v2, "path"

    invoke-static {v0, v1, v4, v2}, Lcom/tudou/videoshare/ShareUtil;->share2Other(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/tudou/ui/activity/BindActivity;->dismiss()V

    goto/16 :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00e3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/BindActivity;->requestWindowFeature(I)Z

    .line 94
    iget-object v1, p0, Lcom/tudou/ui/activity/BindActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/BindActivity;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-direct {p0}, Lcom/tudou/ui/activity/BindActivity;->initView()V

    .line 103
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 149
    return-void
.end method
