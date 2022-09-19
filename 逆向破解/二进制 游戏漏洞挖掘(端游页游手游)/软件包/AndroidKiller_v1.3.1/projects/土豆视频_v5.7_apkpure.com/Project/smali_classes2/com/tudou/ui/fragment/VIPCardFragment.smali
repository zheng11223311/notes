.class public Lcom/tudou/ui/fragment/VIPCardFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "VIPCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_GET_VERIFICATION_FAILED:I = 0x2

.field private static final MSG_GET_VERIFICATION_SUCCESS:I = 0x1

.field private static final MSG_GET_VIPCARD_FAILED:I = 0x3ea

.field private static final MSG_GET_VIPCARD_SUCCESS:I = 0x3e9


# instance fields
.field private mBack:Landroid/widget/RelativeLayout;

.field private mCaptchaResult:Lcom/youku/vo/CaptchaResult;

.field private mCode:Ljava/lang/String;

.field private mEdtCaptcha:Landroid/widget/EditText;

.field private mEdtCode:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mImgCaptcha:Landroid/widget/ImageView;

.field private mTxtConfirm:Landroid/widget/TextView;

.field private mTxtPhone:Landroid/widget/TextView;

.field private mTxtResult:Landroid/widget/TextView;

.field private mTxtTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/youku/vo/CaptchaResult;

    invoke-direct {v0}, Lcom/youku/vo/CaptchaResult;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    .line 44
    new-instance v0, Lcom/tudou/ui/fragment/VIPCardFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/VIPCardFragment$1;-><init>(Lcom/tudou/ui/fragment/VIPCardFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/youku/vo/CaptchaResult;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/VIPCardFragment;Lcom/youku/vo/CaptchaResult;)Lcom/youku/vo/CaptchaResult;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;
    .param p1, "x1"    # Lcom/youku/vo/CaptchaResult;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mImgCaptcha:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCaptcha:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/VIPCardFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/VIPCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->verify()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/VIPCardFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VIPCardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private confirm()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 218
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 219
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    iget-object v3, v3, Lcom/youku/vo/CaptchaResult;->codeid:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/youku/http/TudouURLContainer;->getVipCardUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 222
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/VIPCardFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/VIPCardFragment$3;-><init>(Lcom/tudou/ui/fragment/VIPCardFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 243
    return-void
.end method

.method private getCaptcha()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCaptcha:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtResult:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCode()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtResult:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u4f1a\u5458\u5361\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mCode:Ljava/lang/String;

    .line 206
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtTitle:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v2, 0x7f0d0474

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mBack:Landroid/widget/RelativeLayout;

    .line 133
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c066e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mImgCaptcha:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mImgCaptcha:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c066b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCode:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c066f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtConfirm:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c066a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtResult:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c066d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mEdtCaptcha:Landroid/widget/EditText;

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c067d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtPhone:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mTxtPhone:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private verify()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 146
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 148
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 149
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/VIPCardFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/VIPCardFragment$2;-><init>(Lcom/tudou/ui/fragment/VIPCardFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 179
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 182
    :sswitch_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->getCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->getCaptcha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->confirm()V

    goto :goto_0

    .line 191
    :sswitch_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->verify()V

    goto :goto_0

    .line 194
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v1, "400-898-7799"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->call(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_0
        0x7f0c066e -> :sswitch_2
        0x7f0c066f -> :sswitch_1
        0x7f0c067d -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const v0, 0x7f03014e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    .line 119
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->initView()V

    .line 120
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VIPCardFragment;->verify()V

    .line 121
    iget-object v0, p0, Lcom/tudou/ui/fragment/VIPCardFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 127
    return-void
.end method
