.class public Lcom/tudou/videoshare/ShareTextDialog;
.super Landroid/app/Dialog;
.source "ShareTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BLACK_PAPER:[Ljava/lang/String;

.field public static final ROOM_ID:Ljava/lang/String; = "room_id"

.field public static final SHARE_WORD:Ljava/lang/String; = "share_word"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VID:Ljava/lang/String; = "vid"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/widget/Button;

.field private mDialog:Lcom/youku/widget/TudouDialog;

.field private mOtherButton:Landroid/widget/ImageView;

.field private mQQButton:Landroid/widget/ImageView;

.field private mRoomId:Ljava/lang/String;

.field private mShareHolder:Lcom/tudou/videoshare/ShareHolder;

.field private mShareWord:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVid:Ljava/lang/String;

.field private mWxButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SM-N9002"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GT-N7108D"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/videoshare/ShareTextDialog;->BLACK_PAPER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v0, 0x7f0e0066

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 58
    iput-object p2, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    .line 59
    const-string v0, "share_word"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareWord:Ljava/lang/String;

    .line 60
    const-string v0, "room_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mRoomId:Ljava/lang/String;

    .line 61
    const-string v0, "title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mTitle:Ljava/lang/String;

    .line 62
    const-string v0, "vid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mVid:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/videoshare/ShareTextDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/videoshare/ShareTextDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/tudou/videoshare/ShareTextDialog;->trackShareClick(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f0c00ea

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mCancelButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mWxButton:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mOtherButton:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0c00e7

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mQQButton:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mWxButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mOtherButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mQQButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->isWXInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mWxButton:Landroid/widget/ImageView;

    const v1, 0x7f020a5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/tudou/videoshare/ShareUtil;->isInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mQQButton:Landroid/widget/ImageView;

    const v1, 0x7f02072b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_1
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mWxButton:Landroid/widget/ImageView;

    const v1, 0x7f020a60

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mQQButton:Landroid/widget/ImageView;

    const v1, 0x7f02072c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private static isBlack()Z
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/videoshare/ShareTextDialog;->BLACK_PAPER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    sget-object v1, Lcom/tudou/videoshare/ShareTextDialog;->BLACK_PAPER:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 52
    :goto_1
    return v1

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private trackShareClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "t1.chat_share.share"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 253
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dismissChatSure()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mDialog:Lcom/youku/widget/TudouDialog;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 264
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 119
    .local v0, "id":I
    const v1, 0x7f0c00ea

    if-eq v0, v1, :cond_0

    const v1, 0x7f0c00eb

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    const-string v1, "t1.chat_share.cancel"

    invoke-static {v1, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 121
    invoke-virtual {p0}, Lcom/tudou/videoshare/ShareTextDialog;->dismiss()V

    .line 247
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 133
    :cond_2
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 136
    :sswitch_0
    invoke-static {}, Lcom/tudou/android/wxapi/WXEntryActivity;->isWXInstalled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v3, 0x7f0d0483

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tudou/videoshare/ShareTextDialog$1;

    invoke-direct {v3, p0}, Lcom/tudou/videoshare/ShareTextDialog$1;-><init>(Lcom/tudou/videoshare/ShareTextDialog;)V

    invoke-static {v1, v2, v3, v7, v7}, Lcom/tudou/videoshare/ShareUtil;->popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/tudou/videoshare/ShareTextDialog;->dismiss()V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareWord:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/util/Util;->copy(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareWord:Ljava/lang/String;

    new-instance v3, Lcom/tudou/videoshare/ShareTextDialog$2;

    invoke-direct {v3, p0}, Lcom/tudou/videoshare/ShareTextDialog$2;-><init>(Lcom/tudou/videoshare/ShareTextDialog;)V

    iget-object v4, p0, Lcom/tudou/videoshare/ShareTextDialog;->mRoomId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/videoshare/ShareTextDialog;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/videoshare/ShareTextDialog;->mVid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tudou/videoshare/ShareUtil;->getShareCopySpannable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-static {v1, v2, v3, v7, v4}, Lcom/tudou/videoshare/ShareUtil;->popChatSure(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;ILandroid/text/SpannableString;)Lcom/youku/widget/TudouDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mDialog:Lcom/youku/widget/TudouDialog;

    goto :goto_1

    .line 171
    :sswitch_1
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.mobileqq"

    invoke-static {v1, v2}, Lcom/tudou/videoshare/ShareUtil;->isInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    const-string v2, "\u60a8\u8fd8\u6ca1\u6709\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    new-instance v3, Lcom/tudou/videoshare/ShareTextDialog$3;

    invoke-direct {v3, p0}, Lcom/tudou/videoshare/ShareTextDialog$3;-><init>(Lcom/tudou/videoshare/ShareTextDialog;)V

    invoke-static {v1, v2, v3, v7, v7}, Lcom/tudou/videoshare/ShareUtil;->popUpDialog(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;IZ)Lcom/youku/widget/TudouDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mDialog:Lcom/youku/widget/TudouDialog;

    .line 237
    :goto_2
    invoke-virtual {p0}, Lcom/tudou/videoshare/ShareTextDialog;->dismiss()V

    goto :goto_0

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareWord:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/util/Util;->copy(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareWord:Ljava/lang/String;

    new-instance v3, Lcom/tudou/videoshare/ShareTextDialog$4;

    invoke-direct {v3, p0}, Lcom/tudou/videoshare/ShareTextDialog$4;-><init>(Lcom/tudou/videoshare/ShareTextDialog;)V

    iget-object v4, p0, Lcom/tudou/videoshare/ShareTextDialog;->mRoomId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/videoshare/ShareTextDialog;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/tudou/videoshare/ShareTextDialog;->mVid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tudou/videoshare/ShareUtil;->getShareCopySpannable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-static {v1, v2, v3, v7, v4}, Lcom/tudou/videoshare/ShareUtil;->popChatSure(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/IAlertPositive;ILandroid/text/SpannableString;)Lcom/youku/widget/TudouDialog;

    goto :goto_2

    .line 241
    :sswitch_2
    iget-object v1, p0, Lcom/tudou/videoshare/ShareTextDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareWord:Ljava/lang/String;

    const-string v3, "path"

    invoke-static {v1, v2, v4, v3}, Lcom/tudou/videoshare/ShareUtil;->share2Other(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 242
    const-string v1, "\u5176\u4ed6"

    invoke-direct {p0, v1}, Lcom/tudou/videoshare/ShareTextDialog;->trackShareClick(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/tudou/videoshare/ShareTextDialog;->dismiss()V

    goto/16 :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x7f0c00e3 -> :sswitch_0
        0x7f0c00e7 -> :sswitch_1
        0x7f0c00e9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->requestWindowFeature(I)Z

    .line 75
    const v0, 0x7f0300e5

    invoke-virtual {p0, v0}, Lcom/tudou/videoshare/ShareTextDialog;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/tudou/videoshare/ShareTextDialog;->initView()V

    .line 77
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getShareHolder()Lcom/tudou/videoshare/ShareHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/videoshare/ShareTextDialog;->mShareHolder:Lcom/tudou/videoshare/ShareHolder;

    .line 78
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 110
    return-void
.end method
