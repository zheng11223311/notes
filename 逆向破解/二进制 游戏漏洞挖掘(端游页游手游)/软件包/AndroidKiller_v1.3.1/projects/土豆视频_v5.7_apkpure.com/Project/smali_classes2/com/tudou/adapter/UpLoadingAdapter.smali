.class public Lcom/tudou/adapter/UpLoadingAdapter;
.super Lcom/tudou/adapter/AbsAdapter;
.source "UpLoadingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tudou/adapter/AbsAdapter",
        "<",
        "Lcom/tudou/upload/UploadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mBitmapBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBitmapBuffer:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBitmapBuffer:Ljava/util/HashMap;

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V
    .locals 1
    .param p1, "aBaseActivity"    # Lcom/tudou/ui/activity/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/ui/activity/BaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "aData":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    invoke-direct {p0}, Lcom/tudou/adapter/AbsAdapter;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBitmapBuffer:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBitmapBuffer:Ljava/util/HashMap;

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 35
    iput-object p2, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mCurrentDatas:Ljava/util/List;

    .line 37
    return-void
.end method

.method private getVideoPic(Ljava/lang/String;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBitmapBuffer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 204
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 205
    invoke-static {p2, p1}, Lcom/tudou/upload/UploadInfo;->getThumbImg(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mBitmapBuffer:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/tudou/adapter/UpLoadingAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/UpLoadingAdapter;->mCurrentDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    const/4 v8, 0x0

    .line 78
    .local v8, "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    invoke-virtual/range {p0 .. p1}, Lcom/tudou/adapter/UpLoadingAdapter;->getItemViewType(I)I

    move-result v7

    .line 79
    .local v7, "itmeType":I
    if-nez p2, :cond_0

    .line 80
    packed-switch v7, :pswitch_data_0

    .line 95
    :goto_0
    iput v7, v8, Lcom/tudou/adapter/UploadItemType;->itemType:I

    .line 96
    move-object/from16 p2, v8

    .line 97
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/adapter/UpLoadingAdapter;->mCurrentDatas:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/upload/UploadInfo;

    .line 123
    .local v6, "info":Lcom/tudou/upload/UploadInfo;
    packed-switch v7, :pswitch_data_1

    .line 199
    :goto_2
    return-object p2

    .line 84
    .end local v6    # "info":Lcom/tudou/upload/UploadInfo;
    :pswitch_0
    new-instance v8, Lcom/tudou/adapter/UploadItemTitle;

    .end local v8    # "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    sget-object v13, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/tudou/adapter/UploadItemTitle;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local v8    # "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    goto :goto_0

    .line 90
    :pswitch_1
    new-instance v8, Lcom/tudou/adapter/UploadItem;

    .end local v8    # "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    sget-object v13, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/tudou/adapter/UploadItem;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v8    # "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    check-cast v8, Lcom/tudou/adapter/UploadItemType;

    .restart local v8    # "uploadItemType":Lcom/tudou/adapter/UploadItemType;
    goto :goto_1

    .restart local v6    # "info":Lcom/tudou/upload/UploadInfo;
    :pswitch_2
    move-object v10, v8

    .line 125
    check-cast v10, Lcom/tudou/adapter/UploadItemTitle;

    .line 126
    .local v10, "uploadedTitle":Lcom/tudou/adapter/UploadItemTitle;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v13

    iget-boolean v13, v13, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    if-eqz v13, :cond_1

    .line 127
    iget-object v13, v10, Lcom/tudou/adapter/UploadItemTitle;->mUploadTitle:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u53d1\u5e03\u5931\u8d25("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/youku/vo/UserBean;->getCheckedCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 129
    :cond_1
    iget-object v13, v10, Lcom/tudou/adapter/UploadItemTitle;->mUploadTitle:Landroid/widget/TextView;

    const-string v14, "\u53d1\u5e03\u5931\u8d25"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v10    # "uploadedTitle":Lcom/tudou/adapter/UploadItemTitle;
    :pswitch_3
    move-object v12, v8

    .line 133
    check-cast v12, Lcom/tudou/adapter/UploadItemTitle;

    .line 134
    .local v12, "uploadingTitle":Lcom/tudou/adapter/UploadItemTitle;
    iget-object v13, v12, Lcom/tudou/adapter/UploadItemTitle;->mUploadTitle:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6b63\u5728\u4e0a\u4f20("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/youku/vo/UserBean;->getUploadingCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v12    # "uploadingTitle":Lcom/tudou/adapter/UploadItemTitle;
    :pswitch_4
    move-object v5, v8

    .line 137
    check-cast v5, Lcom/tudou/adapter/UploadItemTitle;

    .line 138
    .local v5, "checkingTitle":Lcom/tudou/adapter/UploadItemTitle;
    iget-object v13, v5, Lcom/tudou/adapter/UploadItemTitle;->mUploadTitle:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u4e0a\u4f20\u5b8c\u6210("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/youku/vo/UserBean;->getUploadCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .end local v5    # "checkingTitle":Lcom/tudou/adapter/UploadItemTitle;
    :pswitch_5
    move-object v3, v8

    .line 141
    check-cast v3, Lcom/tudou/adapter/UploadItem;

    .line 142
    .local v3, "checkedItem":Lcom/tudou/adapter/UploadItem;
    iget-object v13, v3, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    iget-object v13, v3, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    const v14, 0x7f020a11

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v13, v3, Lcom/tudou/adapter/UploadItem;->mTxtTitle:Landroid/widget/TextView;

    const-string v14, "\u53d1\u5e03\u5931\u8d25\u7684\u89c6\u9891"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v13

    iget-boolean v13, v13, Lcom/youku/vo/UserBean;->isCheckedSucess:Z

    if-nez v13, :cond_2

    .line 146
    iget-object v13, v3, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 148
    :cond_2
    iget-object v13, v3, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v13, v3, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/youku/vo/UserBean;->getCheckedCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u4e2a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .end local v3    # "checkedItem":Lcom/tudou/adapter/UploadItem;
    :pswitch_6
    move-object v11, v8

    .line 153
    check-cast v11, Lcom/tudou/adapter/UploadItem;

    .line 155
    .local v11, "uploadingItem":Lcom/tudou/adapter/UploadItem;
    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/adapter/UpLoadingAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/tudou/adapter/UpLoadingAdapter;->getVideoPic(Ljava/lang/String;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 156
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 157
    iget-object v13, v11, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    iget-object v13, v11, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    :goto_3
    iget-object v13, v11, Lcom/tudou/adapter/UploadItem;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v13, v11, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getSizeDesc()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v11, v6}, Lcom/tudou/adapter/UploadItem;->setUploadingItemStatus(Lcom/tudou/upload/UploadInfo;)V

    goto/16 :goto_2

    .line 160
    :cond_3
    iget-object v13, v11, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    const v14, 0x7f020371

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "uploadingItem":Lcom/tudou/adapter/UploadItem;
    :pswitch_7
    move-object v9, v8

    .line 171
    check-cast v9, Lcom/tudou/adapter/UploadItem;

    .line 174
    .local v9, "uploadedItem":Lcom/tudou/adapter/UploadItem;
    iget-object v13, v9, Lcom/tudou/adapter/UploadItem;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v13, v9, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    const v14, 0x7f020371

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/adapter/UpLoadingAdapter;->mBaseActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v13}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getPicurl()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    invoke-virtual {v13, v14, v15}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 180
    iget-object v13, v9, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getPubdate()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u4e0a\u4f20"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getTotalTime()I

    move-result v13

    int-to-double v14, v13

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {v14, v15}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/tudou/adapter/UploadItem;->setUploadTime(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v9    # "uploadedItem":Lcom/tudou/adapter/UploadItem;
    :pswitch_8
    move-object v4, v8

    .line 188
    check-cast v4, Lcom/tudou/adapter/UploadItem;

    .line 189
    .local v4, "checkingItem":Lcom/tudou/adapter/UploadItem;
    iget-object v13, v4, Lcom/tudou/adapter/UploadItem;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v13, v4, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    const v14, 0x7f020a0e

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v13, v4, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    const-string v14, "\u5ba1\u6838\u4e2d"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x7

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "isEnabled":Z
    invoke-virtual {p0, p1}, Lcom/tudou/adapter/UpLoadingAdapter;->getItemViewType(I)I

    move-result v1

    .line 61
    .local v1, "itemType":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/tudou/adapter/AbsAdapter;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 71
    :cond_1
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v2

    goto :goto_0
.end method
