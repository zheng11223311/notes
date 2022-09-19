.class public Lcom/tudou/ui/fragment/UploadFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "UploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONTENT_MAX_LEN:I = 0x64

.field public static final FAILED:I = 0x0

.field private static HIGH_VIDEO_QUALITY:I = 0x0

.field public static LOCAL_VIDEO:I = 0x0

.field private static final LOST_MAX:I = 0x2

.field public static RECORD_VIDEO_SYSTEM:I = 0x0

.field public static RECORD_VIDEO_TUDOU:I = 0x0

.field public static final SUCESS:I = 0x1

.field private static final Sleep_Time:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "UploadFragment"

.field private static final TAG_MAX_LEN:I = 0x14

.field private static final TITLE_MAX_LEN:I = 0x28

.field public static final TYPE_LIST:I = 0x12c

.field private static VIDEO_TYPE_VALUELESS:[Ljava/lang/String;

.field private static mCurrentVideoPath:Ljava/lang/String;

.field public static mFragment:Lcom/tudou/ui/fragment/UploadFragment;

.field public static mIsTudouCamera:Z


# instance fields
.field private channelArray:[Ljava/lang/String;

.field private channelIdArray:[Ljava/lang/String;

.field private mBtnLayout:Landroid/view/View;

.field private mBtnVideoPick:Landroid/widget/ImageView;

.field private mBtnVideoShot:Landroid/widget/ImageView;

.field private mCategoryHandler:Landroid/os/Handler;

.field private mCategoryList:Lcom/youku/vo/CategoryList;

.field private mCbxAgreement:Landroid/widget/CheckBox;

.field private mCurrentChannelId:I

.field private mImgLayout:Landroid/view/View;

.field private mImgVideoPic:Landroid/widget/ImageView;

.field private mImgbDel:Landroid/widget/ImageButton;

.field private mIsFirstIn:Z

.field private mLostCount:I

.field private mMd5Handler:Landroid/os/Handler;

.field private mSpnUpLoadchannelInput:Landroid/widget/Spinner;

.field private mTags:Ljava/lang/String;

.field private mTxtAgreement:Landroid/widget/TextView;

.field private mTxtUpLoadButton:Landroid/widget/TextView;

.field private mTxtUpLoadIntruInput:Lcom/youku/widget/TudouEditText;

.field private mTxtUpLoad_Tag_1:Landroid/widget/EditText;

.field private mTxtUpLoad_Tag_2:Landroid/widget/EditText;

.field private mTxtUpLoad_Tag_3:Landroid/widget/EditText;

.field private mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    sput v2, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_TUDOU:I

    .line 81
    sput v1, Lcom/tudou/ui/fragment/UploadFragment;->LOCAL_VIDEO:I

    .line 82
    const/4 v0, 0x3

    sput v0, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_SYSTEM:I

    .line 84
    sput v2, Lcom/tudou/ui/fragment/UploadFragment;->HIGH_VIDEO_QUALITY:I

    .line 104
    sput-boolean v3, Lcom/tudou/ui/fragment/UploadFragment;->mIsTudouCamera:Z

    .line 1016
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, ".avi"

    aput-object v1, v0, v3

    const-string v1, ".mkv"

    aput-object v1, v0, v2

    sput-object v0, Lcom/tudou/ui/fragment/UploadFragment;->VIDEO_TYPE_VALUELESS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 108
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mIsFirstIn:Z

    .line 546
    new-instance v0, Lcom/tudou/ui/fragment/UploadFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadFragment$8;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mMd5Handler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/tudou/ui/fragment/UploadFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadFragment$9;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCategoryHandler:Landroid/os/Handler;

    .line 1014
    iput v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->initLocalArray()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->ajustSpinner()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/UploadFragment;)Lcom/youku/vo/CategoryList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCategoryList:Lcom/youku/vo/CategoryList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/UploadFragment;Lcom/youku/vo/CategoryList;)Lcom/youku/vo/CategoryList;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;
    .param p1, "x1"    # Lcom/youku/vo/CategoryList;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCategoryList:Lcom/youku/vo/CategoryList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->initCategoryArray()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCategoryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/UploadFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/UploadFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentChannelId:I

    return p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/UploadFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/UploadFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadFragment;->setChannelTag(I)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/UploadFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mMd5Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/UploadFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadFragment;->startUpload(Ljava/lang/String;)V

    return-void
.end method

.method private ajustSpinner()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 373
    const-string v5, "-1"

    iget-object v6, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 374
    iget-object v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    array-length v1, v5

    .line 375
    .local v1, "channelLen":I
    add-int/lit8 v5, v1, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 376
    .local v3, "temChannel":[Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 377
    .local v4, "temChannelId":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 378
    if-nez v2, :cond_0

    .line 379
    const-string/jumbo v5, "\u8bf7\u9009\u62e9\u5206\u7c7b"

    aput-object v5, v3, v7

    .line 380
    const-string v5, "-1"

    aput-object v5, v4, v7

    .line 377
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v2

    .line 383
    iget-object v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    goto :goto_1

    .line 386
    :cond_1
    iput-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    .line 387
    iput-object v4, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    .line 391
    .end local v1    # "channelLen":I
    .end local v2    # "i":I
    .end local v3    # "temChannel":[Ljava/lang/String;
    .end local v4    # "temChannelId":[Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 393
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 394
    iget-object v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->mSpnUpLoadchannelInput:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 395
    iget-object v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->mSpnUpLoadchannelInput:Landroid/widget/Spinner;

    new-instance v6, Lcom/tudou/ui/fragment/UploadFragment$5;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/UploadFragment$5;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 411
    return-void
.end method

.method private checkInput()Z
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v6, 0x0

    .line 620
    const/4 v0, 0x1

    .line 621
    .local v0, "OK":Z
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    invoke-virtual {v7}, Lcom/youku/widget/TudouEditText;->getText()Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "titleTxt":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadIntruInput:Lcom/youku/widget/TudouEditText;

    invoke-virtual {v7}, Lcom/youku/widget/TudouEditText;->getText()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "contentTxt":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentChannelId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 625
    :cond_0
    const v7, 0x7f0d045e

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    move v0, v6

    .line 657
    .end local v0    # "OK":Z
    :cond_1
    :goto_0
    return v0

    .line 627
    .restart local v0    # "OK":Z
    :cond_2
    sget-object v7, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 628
    const v7, 0x7f0d0465

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    move v0, v6

    .line 629
    goto :goto_0

    .line 630
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x28

    if-le v7, v8, :cond_4

    .line 631
    const v7, 0x7f0d0464

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    move v0, v6

    .line 632
    goto :goto_0

    .line 633
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_5

    .line 634
    const v7, 0x7f0d0459

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    move v0, v6

    .line 635
    goto :goto_0

    .line 636
    :cond_5
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 637
    const v7, 0x7f0d045a

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    move v0, v6

    .line 638
    goto :goto_0

    .line 639
    :cond_6
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCbxAgreement:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_7

    .line 640
    const v7, 0x7f0d0457

    sget-object v8, Lcom/youku/util/IConfirm$Status;->NOTHING:Lcom/youku/util/IConfirm$Status;

    invoke-virtual {p0, v7, v8}, Lcom/tudou/ui/fragment/UploadFragment;->showConfirmDialog(ILcom/youku/util/IConfirm$Status;)V

    move v0, v6

    .line 641
    goto :goto_0

    .line 644
    :cond_7
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_1:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "tag1":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_2:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "tag2":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_3:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "tag3":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v9, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v9, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_9

    .line 648
    :cond_8
    const-string/jumbo v7, "\u8bf7\u68c0\u67e5\u6807\u7b7e\u957f\u5ea6"

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    move v0, v6

    .line 649
    goto/16 :goto_0

    .line 651
    :cond_9
    invoke-direct {p0, v2, v3, v4}, Lcom/tudou/ui/fragment/UploadFragment;->getTagsJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTags:Ljava/lang/String;

    .line 653
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTags:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTags:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 654
    :cond_a
    const v7, 0x7f0d0462

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    move v0, v6

    .line 655
    goto/16 :goto_0
.end method

.method private getCategoryList()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 140
    new-instance v2, Lcom/tudou/ui/fragment/UploadFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadFragment$1;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->setOnDissmissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 152
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 154
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getCategoryList()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 156
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/UploadFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadFragment$2;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 179
    return-void
.end method

.method private getTagsJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tag1"    # Ljava/lang/String;
    .param p2, "tag2"    # Ljava/lang/String;
    .param p3, "tag3"    # Ljava/lang/String;

    .prologue
    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v3, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 681
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 684
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 687
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 690
    .local v1, "len":I
    if-lez v1, :cond_3

    .line 691
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 692
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 694
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 695
    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_5

    .line 696
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getVideoMd5()V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->shownotauto(Landroid/content/Context;)V

    .line 517
    new-instance v0, Lcom/tudou/ui/fragment/UploadFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadFragment$6;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->setOnDissmissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 525
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tudou/ui/fragment/UploadFragment$7;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/UploadFragment$7;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 544
    return-void
.end method

.method private initCategoryArray()V
    .locals 5

    .prologue
    .line 182
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCategoryList:Lcom/youku/vo/CategoryList;

    iget-object v3, v3, Lcom/youku/vo/CategoryList;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 183
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    .line 184
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCategoryList:Lcom/youku/vo/CategoryList;

    iget-object v3, v3, Lcom/youku/vo/CategoryList;->data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/Category;

    .line 187
    .local v0, "category":Lcom/youku/vo/Category;
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/youku/vo/Category;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 188
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/youku/vo/Category;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "category":Lcom/youku/vo/Category;
    :cond_0
    return-void
.end method

.method private initLocalArray()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 198
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelIdArray:[Ljava/lang/String;

    .line 200
    :cond_1
    return-void
.end method

.method private initTitle()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 363
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0c04ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/UploadFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadFragment$4;-><init>(Lcom/tudou/ui/fragment/UploadFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x7f0d042c

    const/16 v4, 0x14

    .line 249
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c064d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgVideoPic:Landroid/widget/ImageView;

    .line 250
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgVideoPic:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c064e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgbDel:Landroid/widget/ImageButton;

    .line 253
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0651

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnVideoPick:Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0650

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnVideoShot:Landroid/widget/ImageView;

    .line 257
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c064c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgLayout:Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c064f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnLayout:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c065b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadButton:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0652

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TudouEditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    .line 264
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0653

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TudouEditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadIntruInput:Lcom/youku/widget/TudouEditText;

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0655

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mSpnUpLoadchannelInput:Landroid/widget/Spinner;

    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0658

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_1:Landroid/widget/EditText;

    .line 270
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0659

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_2:Landroid/widget/EditText;

    .line 272
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c065a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_3:Landroid/widget/EditText;

    .line 275
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c065d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtAgreement:Landroid/widget/TextView;

    .line 277
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCbxAgreement:Landroid/widget/CheckBox;

    .line 279
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtAgreement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgbDel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnVideoPick:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnVideoShot:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    iget-object v0, v0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    const/16 v1, 0x28

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v3, 0x7f0d043b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tudou/ui/fragment/UploadFragment;->setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadIntruInput:Lcom/youku/widget/TudouEditText;

    iget-object v0, v0, Lcom/youku/widget/TudouEditText;->mEdtTudou:Landroid/widget/EditText;

    const/16 v1, 0x64

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v3, 0x7f0d00cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tudou/ui/fragment/UploadFragment;->setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_1:Landroid/widget/EditText;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/tudou/ui/fragment/UploadFragment;->setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_2:Landroid/widget/EditText;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/tudou/ui/fragment/UploadFragment;->setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_3:Landroid/widget/EditText;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/tudou/ui/fragment/UploadFragment;->setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V

    .line 299
    return-void
.end method

.method private isValueVideo()Z
    .locals 5

    .prologue
    .line 1043
    sget-object v2, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1044
    const/4 v1, 0x0

    .line 1054
    :cond_0
    :goto_0
    return v1

    .line 1046
    :cond_1
    const/4 v1, 0x1

    .line 1047
    .local v1, "isValueVideo":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/tudou/ui/fragment/UploadFragment;->VIDEO_TYPE_VALUELESS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1048
    sget-object v2, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    sget-object v3, Lcom/tudou/ui/fragment/UploadFragment;->VIDEO_TYPE_VALUELESS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u65e0\u6548\u7684\u89c6\u9891===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const/4 v1, 0x0

    .line 1051
    goto :goto_0

    .line 1047
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x400

    .line 947
    sget v1, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_SYSTEM:I

    if-ne p1, v1, :cond_0

    .line 948
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 951
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-ne v1, v3, :cond_1

    .line 952
    const-string v1, "TAG_TUDOU"

    const-string/jumbo v2, "\u4e0d\u6e05\u7406\u5168\u5c4f"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 985
    :goto_1
    return-void

    .line 954
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const-string v1, "TAG_TUDOU"

    const-string/jumbo v2, "\u6e05\u7406\u5168\u5c4f"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 983
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/tudou/ui/fragment/UploadFragment;->onActivityResultSystem(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private static onActivityResultSystem(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 12
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 762
    sget v0, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_SYSTEM:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/tudou/ui/fragment/UploadFragment;->LOCAL_VIDEO:I

    if-ne p1, v0, :cond_1

    .line 763
    :cond_0
    const-string v0, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadFragment==onActivityResult if data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    if-eqz p2, :cond_1

    .line 765
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 766
    .local v1, "recordedVideo":Landroid/net/Uri;
    const-string v0, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadFragment==onActivityResult if recordedVideo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    if-nez v1, :cond_2

    .line 769
    const v0, 0x7f0d045b

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 823
    .end local v1    # "recordedVideo":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 773
    .restart local v1    # "recordedVideo":Landroid/net/Uri;
    :cond_2
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "_display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "_size"

    aput-object v3, v2, v0

    .line 777
    .local v2, "proj":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 779
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 781
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 785
    .local v7, "displayName":Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 789
    .local v10, "path":Ljava/lang/String;
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 793
    .local v11, "size":Ljava/lang/String;
    sput-object v10, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    .line 794
    invoke-virtual {p0, v6}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 795
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 801
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v11    # "size":Ljava/lang/String;
    :goto_1
    sget-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 802
    const v0, 0x7f0d045b

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 798
    .end local v10    # "path":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 799
    .restart local v10    # "path":Ljava/lang/String;
    sput-object v10, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    goto :goto_1

    .line 804
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 805
    const v0, 0x7f0d045a

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 808
    :cond_5
    sget-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mFragment:Lcom/tudou/ui/fragment/UploadFragment;

    if-nez v0, :cond_6

    .line 809
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->TAG_FROM_FIRST_PAGE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 811
    .local v9, "isFromFirst":Z
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/tudou/ui/activity/UploadActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 812
    .local v8, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->TAG_FROM_FIRST_PAGE:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 814
    invoke-static {p0, v8}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 816
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isFromFirst":Z
    :cond_6
    sget-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mFragment:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/UploadFragment;->setUploadImg()V

    goto/16 :goto_0
.end method

.method private scanPic()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1019
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6b21\u626b\u63cf===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tudou/upload/UploadInfo;->getThumbImg(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1023
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 1024
    iget v2, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->isValueVideo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1025
    :cond_0
    iput v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    .line 1026
    const/4 v0, 0x0

    .line 1038
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 1029
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :goto_1
    iget v2, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    .line 1034
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->scanPic()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1037
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iput v5, p0, Lcom/tudou/ui/fragment/UploadFragment;->mLostCount:I

    goto :goto_0
.end method

.method private setChannelTag(I)V
    .locals 3
    .param p1, "tagIndex"    # I

    .prologue
    .line 599
    if-nez p1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, p1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->channelArray:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 606
    .local v0, "sTr":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_1:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoad_Tag_1:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private setImgShow(Z)V
    .locals 3
    .param p1, "showImg"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextChangeListner(Landroid/widget/EditText;ILjava/lang/String;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "maxLen"    # I
    .param p3, "des"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Lcom/tudou/ui/fragment/UploadFragment$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/tudou/ui/fragment/UploadFragment$3;-><init>(Lcom/tudou/ui/fragment/UploadFragment;ILjava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 329
    return-void
.end method

.method private setUploadImg()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 988
    sget-object v1, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 989
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/UploadFragment;->setImgShow(Z)V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->scanPic()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 993
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 994
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/UploadFragment;->setImgShow(Z)V

    .line 995
    sget-object v1, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 996
    const/4 v1, 0x0

    sput-object v1, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    .line 997
    const v1, 0x7f0d02c4

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1001
    :cond_2
    const-string v1, "TAG2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",width==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgVideoPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1004
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/UploadFragment;->setImgShow(Z)V

    goto :goto_0
.end method

.method public static showLocalVideo(Landroid/app/Activity;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    .line 438
    const v1, 0x7f0d03d0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 440
    sget v1, Lcom/tudou/ui/fragment/UploadFragment;->LOCAL_VIDEO:I

    invoke-static {p0, v0, v1}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 442
    return-void
.end method

.method private startUpload(Ljava/lang/String;)V
    .locals 12
    .param p1, "videoMd5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-object v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    invoke-virtual {v8}, Lcom/youku/widget/TudouEditText;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1070
    .local v6, "titleTxt":Ljava/lang/String;
    iget-object v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadIntruInput:Lcom/youku/widget/TudouEditText;

    invoke-virtual {v8}, Lcom/youku/widget/TudouEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "contentTxt":Ljava/lang/String;
    new-instance v2, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v2}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 1075
    .local v2, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v2, v6}, Lcom/tudou/upload/UploadInfo;->setTitle(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v2, v0}, Lcom/tudou/upload/UploadInfo;->setDesc(Ljava/lang/String;)V

    .line 1077
    iget-object v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTags:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/tudou/upload/UploadInfo;->setTag(Ljava/lang/String;)V

    .line 1078
    iget v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentChannelId:I

    invoke-virtual {v2, v8}, Lcom/tudou/upload/UploadInfo;->setCategory(I)V

    .line 1079
    sget-object v8, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/tudou/upload/UploadInfo;->setFilePath(Ljava/lang/String;)V

    .line 1080
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/tudou/upload/UploadInfo;->setTaskId(Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/tudou/upload/UploadInfo;->setCreateTime(J)V

    .line 1085
    invoke-virtual {v2, p1}, Lcom/tudou/upload/UploadInfo;->setMd5(Ljava/lang/String;)V

    .line 1087
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/tudou/upload/UploadInfo;->setSize(J)V

    .line 1089
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v7

    .line 1090
    .local v7, "uploadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    const/4 v5, 0x0

    .line 1091
    .local v5, "isUploading":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/upload/UploadInfo;

    .line 1092
    .local v3, "info2":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1093
    const/4 v5, 0x1

    .line 1097
    .end local v3    # "info2":Lcom/tudou/upload/UploadInfo;
    :cond_1
    if-eqz v5, :cond_2

    .line 1098
    const v8, 0x7f0d045f

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    .line 1125
    :goto_0
    return-void

    .line 1103
    :cond_2
    invoke-static {v2}, Lcom/tudou/upload/UploadProcessor;->add(Lcom/tudou/upload/UploadInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1104
    new-instance v8, Lcom/tudou/upload/UploadProcessor;

    invoke-direct {v8, v2}, Lcom/tudou/upload/UploadProcessor;-><init>(Lcom/tudou/upload/UploadInfo;)V

    invoke-virtual {v8}, Lcom/tudou/upload/UploadProcessor;->start()V

    .line 1105
    const v8, 0x7f0d0010

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    .line 1113
    const-string/jumbo v8, "\u4e0a\u4f20\u9875\u4e0a\u4f20\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v9, "\u89c6\u9891\u7f16\u8f91\u9875\u9762-\u5b8c\u6210\u4e0a\u4f20"

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/HomePageActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const/4 v8, 0x1

    sput-boolean v8, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    .line 1116
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v9, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1117
    .local v4, "intent":Landroid/content/Intent;
    sget-object v8, Lcom/tudou/ui/activity/UploadManagerActivity;->mActivity:Lcom/tudou/ui/activity/UploadManagerActivity;

    if-nez v8, :cond_3

    .line 1119
    iget-object v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v8, v4}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1121
    :cond_3
    iget-object v8, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 1123
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    const v8, 0x7f0d045c

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method

.method private uploadVideo()V
    .locals 4

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->checkInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getVideoMd5()V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v0, "goLogin":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    const-string v1, "TAG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public static videoShot(Landroid/app/Activity;)V
    .locals 1
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 454
    sget-boolean v0, Lcom/tudou/ui/fragment/UploadFragment;->mIsTudouCamera:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-static {p0}, Lcom/tudou/ui/fragment/UploadFragment;->videoShotTudou(Landroid/app/Activity;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {p0}, Lcom/tudou/ui/fragment/UploadFragment;->videoShotSystem(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static videoShotSystem(Landroid/app/Activity;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    sget v2, Lcom/tudou/ui/fragment/UploadFragment;->HIGH_VIDEO_QUALITY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    sget v1, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_SYSTEM:I

    invoke-static {p0, v0, v1}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 465
    return-void
.end method

.method public static videoShotTudou(Landroid/app/Activity;)V
    .locals 0
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 471
    return-void
.end method


# virtual methods
.method public containsIllegalChar(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 667
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, " "

    aput-object v4, v0, v3

    const-string v4, "%"

    aput-object v4, v0, v2

    const/4 v4, 0x2

    const-string v5, "<"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, ">"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "\""

    aput-object v5, v0, v4

    .line 668
    .local v0, "ch":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 669
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 673
    :goto_1
    return v2

    .line 668
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 673
    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 218
    const-string v0, "Youku"

    const-string v1, "UploadFragmentonAttach"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onAttach(Landroid/app/Activity;)V

    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUpLoadButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->uploadVideo()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtAgreement:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "http://www.tudou.com/about/account.php"

    const-string/jumbo v2, "upload"

    const-string/jumbo v3, "\u8d26\u53f7\u4f7f\u7528\u534f\u8bae"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgbDel:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 422
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    .line 423
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->setUploadImg()V

    goto :goto_0

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnVideoPick:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->showLocalVideo(Landroid/app/Activity;)V

    goto :goto_0

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mBtnVideoShot:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->videoShot(Landroid/app/Activity;)V

    goto :goto_0

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mImgVideoPic:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    sput-object p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragment:Lcom/tudou/ui/fragment/UploadFragment;

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mIsFirstIn:Z

    .line 120
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 121
    const-string v1, "Youku"

    const-string v2, "UploadFragmentonCreate"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getCategoryList()V

    .line 130
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "fromIntent":Landroid/content/Intent;
    sget-object v1, Lcom/tudou/ui/activity/HomePageActivity;->TAG_FROM_FIRST_PAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 226
    const-string v0, "Youku"

    const-string v1, "UploadFragmentonCreateView"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const v0, 0x7f03014b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    .line 229
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->initView()V

    .line 230
    sget-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 231
    const-string v0, "mCurrentVideoPath"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->setUploadImg()V

    .line 235
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "Youku"

    const-string v1, "UploadFragmentonDestroy"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/fragment/UploadFragment;->mFragment:Lcom/tudou/ui/fragment/UploadFragment;

    .line 213
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 214
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "Youku"

    const-string v1, "UploadFragmentonPause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "TAG1018"

    const-string v1, "UploadFragment=====onPasuse"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFragment;->initTitle()V

    .line 334
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mIsFirstIn:Z

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mIsFirstIn:Z

    .line 336
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    invoke-virtual {v0}, Lcom/youku/widget/TudouEditText;->requestFocus()Z

    .line 337
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment;->mTxtUplaodTitleInput:Lcom/youku/widget/TudouEditText;

    const-wide/16 v2, 0x3e6

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->showSoftInput(Landroid/app/Activity;Landroid/view/View;J)V

    .line 342
    :cond_0
    const-string v0, "TAG1018"

    const-string v1, "UploadFragment=====onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 344
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1009
    const-string v0, "mCurrentVideoPath"

    sget-object v1, Lcom/tudou/ui/fragment/UploadFragment;->mCurrentVideoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1010
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1011
    return-void
.end method
