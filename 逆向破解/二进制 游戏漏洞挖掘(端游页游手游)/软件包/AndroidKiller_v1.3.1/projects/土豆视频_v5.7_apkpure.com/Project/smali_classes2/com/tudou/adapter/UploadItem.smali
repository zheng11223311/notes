.class public Lcom/tudou/adapter/UploadItem;
.super Lcom/tudou/adapter/UploadItemType;
.source "UploadItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mImgMain:Landroid/widget/ImageView;

.field public mImgRight:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

.field public mTxtContent1:Landroid/widget/TextView;

.field public mTxtContent2:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;

.field public mTxtUploadTime:Landroid/widget/TextView;

.field public mViewRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tudou/adapter/UploadItemType;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItem;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/UploadItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItem;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "layout_inflater"

    .line 42
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03031c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    const v1, 0x7f0c0d7e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgMain:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f0c0d7f

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtUploadTime:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0c0d82

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtTitle:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0c0d83

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0c0d84

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0c02df

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    .line 50
    const v1, 0x7f0c0d81

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mViewRight:Landroid/view/View;

    .line 51
    const v1, 0x7f0c0d85

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/UploadItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/RoundProgressBar;

    iput-object v1, p0, Lcom/tudou/adapter/UploadItem;->mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

    .line 53
    return-void
.end method

.method public setCheckingItemStatus(Lcom/tudou/upload/UploadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getMpsStatus()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 146
    :goto_0
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getDelReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    const-string v1, "\u5ba1\u6838\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/adapter/UploadItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0229

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 152
    return-void

    .line 137
    :sswitch_0
    const-string v0, "\u8bf7\u52ff\u4e0a\u4f20\u76f8\u540c\u89c6\u9891"

    invoke-virtual {p1, v0}, Lcom/tudou/upload/UploadInfo;->setDelReason(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :sswitch_1
    const-string v0, "\u7248\u6743\u590d\u67e5\u4e2d"

    invoke-virtual {p1, v0}, Lcom/tudou/upload/UploadInfo;->setDelReason(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getDelReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public setUploadTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "uploadTime"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/adapter/UploadItem;->mTxtUploadTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/tudou/adapter/UploadItem;->mTxtUploadTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setUploadingItemStatus(Lcom/tudou/upload/UploadInfo;)V
    .locals 7
    .param p1, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    const v6, 0x7f0e0228

    const v5, 0x7f0e0227

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 66
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

    invoke-virtual {v1, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    const v2, 0x7f0207fe

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_0
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    .line 77
    .local v0, "status":I
    sparse-switch v0, :sswitch_data_0

    .line 92
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    :goto_1
    return-void

    .line 74
    .end local v0    # "status":I
    :cond_0
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    const v2, 0x7f0207ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    .restart local v0    # "status":I
    :sswitch_0
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    const-string v2, "\u4e0a\u4f20\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 85
    :sswitch_1
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 98
    .end local v0    # "status":I
    :cond_1
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    .line 99
    .restart local v0    # "status":I
    sparse-switch v0, :sswitch_data_1

    .line 120
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    const v2, 0x7f020a18

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

    invoke-virtual {v1, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 102
    :sswitch_2
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    const-string v2, "\u4e0a\u4f20\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/RoundProgressBar;->setProgress(I)V

    .line 104
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

    invoke-virtual {v1, v3}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 110
    :sswitch_3
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c\u4e2d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    const v2, 0x7f020a17

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mRoundProgressBar:Lcom/youku/widget/RoundProgressBar;

    invoke-virtual {v1, v4}, Lcom/youku/widget/RoundProgressBar;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/tudou/adapter/UploadItem;->mTxtContent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/adapter/UploadItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 99
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method
