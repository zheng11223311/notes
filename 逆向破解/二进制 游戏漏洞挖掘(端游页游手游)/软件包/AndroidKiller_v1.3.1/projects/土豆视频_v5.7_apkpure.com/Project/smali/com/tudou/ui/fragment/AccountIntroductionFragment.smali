.class public Lcom/tudou/ui/fragment/AccountIntroductionFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "AccountIntroductionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final MODIFY_USER_ICON_FAILED:I = 0x2

.field private static final MODIFY_USER_ICON_SUCCESS:I = 0x1

.field private static final MODIFY_USER_INTRODUCTION_FAILED:I = 0x3

.field private static final PHOTO_REQUEST_CROP:I = 0x3

.field private static final PHOTO_REQUEST_GALLERY:I = 0x2

.field private static final PHOTO_REQUEST_TAKE_PHOTO:I = 0x1

.field public static final RESULT_CODE:I = 0x7d0


# instance fields
.field private imageUri:Landroid/net/Uri;

.field private isModifiedUserIcon:Z

.field private isPause:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mChangeIconTv:Landroid/widget/TextView;

.field private mHandler:Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

.field private mIntroductionEditText:Landroid/widget/EditText;

.field private mPicPath:Ljava/lang/String;

.field private mUserIconImg:Landroid/widget/ImageView;

.field private mUserNameCountTv:Landroid/widget/TextView;

.field private mUserNameEditText:Landroid/widget/EditText;

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mPicPath:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;-><init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mHandler:Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->updateUserBean(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isModifiedUserIcon:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isPause:Z

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/vo/UserIntroductionData;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;
    .param p1, "x1"    # Lcom/youku/vo/UserIntroductionData;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->handleData(Lcom/youku/vo/UserIntroductionData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mHandler:Lcom/tudou/ui/fragment/AccountIntroductionFragment$MyHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mPicPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method private checkNickName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 307
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    .line 308
    const-string/jumbo v2, "\u6635\u79f0\u8fc7\u957f"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 318
    :goto_0
    return v1

    .line 311
    :cond_0
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 312
    const-string/jumbo v2, "\u6635\u79f0\u9700\u5728\u4e24\u4e2a\u5b57\u4ee5\u4e0a"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 318
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 536
    :goto_0
    return-object v2

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 534
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 473
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 474
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleData(Lcom/youku/vo/UserIntroductionData;)V
    .locals 16
    .param p1, "userIntroductionData"    # Lcom/youku/vo/UserIntroductionData;

    .prologue
    .line 322
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/youku/vo/UserIntroductionData;->data:Ljava/util/ArrayList;

    .line 323
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/UserIntroductionData$Data;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 324
    .local v10, "size":I
    const/4 v13, 0x0

    .line 325
    .local v13, "userNameFlag":I
    const/4 v4, 0x0

    .line 326
    .local v4, "introFlag":I
    const/4 v9, 0x0

    .line 327
    .local v9, "picData":Lcom/youku/vo/UserIntroductionData$Data;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_3

    .line 328
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/UserIntroductionData$Data;

    .line 329
    .local v6, "introductionBean":Lcom/youku/vo/UserIntroductionData$Data;
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->nick_name:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    if-eqz v14, :cond_0

    .line 330
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->nick_name:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    iget-object v14, v14, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->result:Ljava/lang/String;

    const-string/jumbo v15, "success"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 331
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->nick_name:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    iget-object v14, v14, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->code:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->showUserNameErrorTips(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v13, v13, 0x1

    .line 335
    :cond_0
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->about_myself:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    if-eqz v14, :cond_1

    .line 336
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->about_myself:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    iget-object v14, v14, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->result:Ljava/lang/String;

    const-string/jumbo v15, "success"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 337
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->about_myself:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    iget-object v14, v14, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->code:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->showUserIntroductionErrorTips(Ljava/lang/String;)V

    .line 338
    add-int/lit8 v4, v4, 0x1

    .line 341
    :cond_1
    iget-object v14, v6, Lcom/youku/vo/UserIntroductionData$Data;->pic_update:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    if-eqz v14, :cond_2

    .line 342
    move-object v9, v6

    .line 327
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v6    # "introductionBean":Lcom/youku/vo/UserIntroductionData$Data;
    :cond_3
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v11

    .line 346
    .local v11, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v11}, Lcom/youku/vo/UserBean;->getAbout_myself()Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, "introductionStr":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, "nickNameStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 349
    .local v12, "userName":Ljava/lang/String;
    if-nez v13, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v11, v12}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 350
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mIntroductionEditText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "introduction":Ljava/lang/String;
    if-nez v4, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v11, v5}, Lcom/youku/vo/UserBean;->setAbout_myself(Ljava/lang/String;)V

    .line 352
    :cond_5
    if-nez v13, :cond_8

    if-nez v4, :cond_8

    .line 353
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isModifiedUserIcon:Z

    if-eqz v14, :cond_7

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->uploadUserIcon(Lcom/youku/vo/UserIntroductionData$Data;)V

    .line 367
    :cond_6
    :goto_1
    return-void

    .line 356
    :cond_7
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 357
    const/4 v14, 0x1

    sput-boolean v14, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 358
    const-string/jumbo v14, "\u4fee\u6539\u6210\u529f"

    invoke-static {v14}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 360
    .local v1, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v1, :cond_6

    .line 361
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 365
    .end local v1    # "activity":Landroid/support/v4/app/FragmentActivity;
    :cond_8
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_1
.end method

.method private initData()V
    .locals 7

    .prologue
    .line 187
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    .line 188
    .local v2, "instance":Lcom/youku/vo/UserBean;
    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "nickName":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getAbout_myself()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "introduction":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mIntroductionEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameCountTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "userIcon"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 195
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 196
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserIconImg:Landroid/widget/ImageView;

    const v6, 0x7f020616

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserIconImg:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/youku/util/Util;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private initImgUri()V
    .locals 7

    .prologue
    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/1.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mPicPath:Ljava/lang/String;

    .line 162
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mPicPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    const-string v4, "byron"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPicPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mPicPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->imageUri:Landroid/net/Uri;

    .line 172
    const-string v4, "byron"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->imageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mPicPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 175
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 176
    .local v3, "status":I
    if-nez v3, :cond_1

    .line 177
    const-string v4, "byron"

    const-string v5, "change mod success."

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "status":I
    :cond_1
    :try_start_2
    const-string v4, "byron"

    const-string v5, "change mod failed."

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 181
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "byron"

    const-string v5, "change mod failed."

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 203
    const v3, 0x7f0c00a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    .local v0, "backImg":Landroid/widget/ImageView;
    const v3, 0x7f0c00aa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserIconImg:Landroid/widget/ImageView;

    .line 205
    const v3, 0x7f0c00ab

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mChangeIconTv:Landroid/widget/TextView;

    .line 206
    const v3, 0x7f0c00ae

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameCountTv:Landroid/widget/TextView;

    .line 207
    const v3, 0x7f0c00ad

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    .line 208
    const v3, 0x7f0c00b0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mIntroductionEditText:Landroid/widget/EditText;

    .line 209
    const v3, 0x7f0c00a9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    .local v2, "submitTv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mChangeIconTv:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$1;-><init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    const v3, 0x7f0c0094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method private setPicToView()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 541
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserIconImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/util/Util$RoundedDrawable;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/youku/util/Util$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isModifiedUserIcon:Z

    .line 546
    :cond_0
    return-void
.end method

.method private showSelectedDialog()V
    .locals 3

    .prologue
    .line 435
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 437
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u62cd\u7167"

    new-instance v2, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$4;-><init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 453
    const-string/jumbo v1, "\u76f8\u518c"

    new-instance v2, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$5;-><init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 468
    const-string/jumbo v1, "\u5934\u50cf\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 470
    return-void
.end method

.method private showUserIntroductionErrorTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, "errorType":I
    sparse-switch v0, :sswitch_data_0

    .line 388
    const-string/jumbo v1, "\u7b80\u4ecb\u4e0d\u53ef\u7528"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :sswitch_0
    const-string/jumbo v1, "\u7528\u6237ID\u9519\u8bef"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :sswitch_1
    const-string/jumbo v1, "\u7b80\u4ecb\u9519\u8bef"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :sswitch_2
    const-string/jumbo v1, "\u7b80\u4ecb\u6587\u5b57\u5ba1\u6838\u4e0d\u901a\u8fc7"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :sswitch_3
    const-string/jumbo v1, "\u7b80\u4ecb\u542b\u6709\u7279\u6b8a\u7b26\u53f7\u65e0\u6cd5\u4fdd\u5b58"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        -0x834 -> :sswitch_2
        -0x3ee -> :sswitch_1
        -0x3e8 -> :sswitch_0
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method private showUserNameErrorTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "errorType":I
    sparse-switch v0, :sswitch_data_0

    .line 412
    const-string/jumbo v1, "\u60a8\u7684\u4fee\u6539\u4e0d\u7b26\u5408\u89c4\u5219"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :sswitch_0
    const-string/jumbo v1, "\u7528\u6237ID\u9519\u8bef"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :sswitch_1
    const-string/jumbo v1, "\u7528\u6237\u6635\u79f0\u4e0d\u7b26\u5408\u89c4\u5219"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :sswitch_2
    const-string/jumbo v1, "\u6587\u5b57\u5ba1\u6838\u4e0d\u901a\u8fc7"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :sswitch_3
    const-string/jumbo v1, "\u6635\u79f0\u5df2\u5b58\u5728"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        -0x834 -> :sswitch_2
        -0x7d6 -> :sswitch_3
        -0x3eb -> :sswitch_1
        -0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private startPhotoZoom(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x1

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "crop"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 512
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 515
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string/jumbo v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    const-string/jumbo v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 519
    const-string/jumbo v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    const-string v1, "output"

    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 526
    return-void
.end method

.method private static updateUserBean(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)Ljava/lang/String;
    .locals 4
    .param p0, "af"    # Lcom/tudou/ui/fragment/AccountIntroductionFragment;

    .prologue
    .line 138
    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "userName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mIntroductionEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "introduction":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    .line 141
    .local v1, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v1, v2}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/youku/vo/UserBean;->setAbout_myself(Ljava/lang/String;)V

    .line 143
    return-object v2
.end method

.method private updateUserInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 259
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    const-string/jumbo v6, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "nickName":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mIntroductionEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "introduction":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    const-string/jumbo v6, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
    const-string/jumbo v6, "\u7b80\u4ecb\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->checkNickName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    .line 275
    .local v5, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 276
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getUpdateUserInfoURL()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "url":Ljava/lang/String;
    const-class v6, Lcom/youku/network/IHttpRequest;

    invoke-static {v6, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 279
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v6, "POST"

    iget-boolean v7, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isModifiedUserIcon:Z

    invoke-static {v3, v2, v7, v8}, Lcom/youku/http/TudouURLContainer;->getUpdateUserInfoPostData(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v6, v8, v7}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 282
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v6, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$2;-><init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;)V

    invoke-interface {v1, v0, v6}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private uploadUserIcon(Lcom/youku/vo/UserIntroductionData$Data;)V
    .locals 2
    .param p1, "introductionBean"    # Lcom/youku/vo/UserIntroductionData$Data;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/fragment/AccountIntroductionFragment$3;-><init>(Lcom/tudou/ui/fragment/AccountIntroductionFragment;Lcom/youku/vo/UserIntroductionData$Data;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x96

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 484
    .local v0, "exists":Z
    if-eqz v0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->tempFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->startPhotoZoom(Landroid/net/Uri;I)V

    goto :goto_0

    .line 490
    .end local v0    # "exists":Z
    :pswitch_1
    if-eqz p3, :cond_0

    .line 491
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->startPhotoZoom(Landroid/net/Uri;I)V

    goto :goto_0

    .line 498
    :pswitch_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->imageUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->setPicToView()V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    return-void

    .line 247
    :pswitch_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->showSelectedDialog()V

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->updateUserInfo()V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x7f0c00a7
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->initImgUri()V

    .line 149
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->initViews(Landroid/view/View;)V

    .line 151
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->initData()V

    .line 152
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 153
    .local v1, "str":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 155
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->mUserNameEditText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/youku/util/Util;->showSoftInput(Landroid/app/Activity;Landroid/view/View;)V

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "temp.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->tempFile:Ljava/io/File;

    .line 157
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isPause:Z

    .line 569
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 573
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/AccountIntroductionFragment;->isPause:Z

    .line 575
    return-void
.end method

.method public saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "picName"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 549
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 554
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 555
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p2, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 556
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 557
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
